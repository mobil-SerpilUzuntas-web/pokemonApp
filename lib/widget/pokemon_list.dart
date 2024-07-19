import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';
import 'package:pokemon_bilgileri/services/pokedex_api.dart';
import 'package:pokemon_bilgileri/ui_helper.dart';
import 'package:pokemon_bilgileri/widget/pokelist_item.dart';

class PokemonList extends StatefulWidget {  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonListFuture;
  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> listem = snapshot.data!;
          //ListView.builder SATIR şeklin de tek tek elemanları satır şeklinde ekrana basar
          //GridView.builder ise Colunm Şeklin de ekrana basar bu deger de crossAxisCount: 2 ekrana yanyana 2 adetli colonlar şeklin de cardları yerleştirir
          return GridView.builder(
              itemCount: listem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) =>
                  PokeListItem(pokemon: listem[index]));
        } else if (snapshot.hasData) {
          return const Center(child: Text('Hata Çıktı'));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
