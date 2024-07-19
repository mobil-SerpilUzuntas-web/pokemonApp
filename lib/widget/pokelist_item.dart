import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';
import 'package:pokemon_bilgileri/pages/detal_pages.dart';
import 'package:pokemon_bilgileri/style_constants.dart';
import 'package:pokemon_bilgileri/ui_helper.dart';
import 'package:pokemon_bilgileri/widget/poke_img_and_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeListItem({required this.pokemon,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                DetailPage(pokemon: pokemon)));
      },
      child: Card(
        //Card style ayarlıyoruz

        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white,
        color: UlHelper.getColorFromType(pokemon.type![0]),
        //Buradada Cartın içinde olması gereken widget tanımladı genel de Card ayarlanır ve içine Colum widget atılır
        child: Padding(
          padding: UlHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? 'N/A',
                style: Constants.getPokemonNameTextStyele(),
              ),
              Chip(
                label: Text(
                    style: Constants.getPokemonChipTextStyele(),
                    pokemon.type![0]),
              ),
              Expanded(
                child: Container(
                    alignment: Alignment.bottomRight,
                    child: PokeImageAndBall(pokemon: pokemon)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
