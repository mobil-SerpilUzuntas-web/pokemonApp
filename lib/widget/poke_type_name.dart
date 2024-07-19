import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';
import 'package:pokemon_bilgileri/style_constants.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Container(
       height: 0.2.sh,
//Bu Kısım*********

     
       child: Padding(
        padding:ScreenUtil().orientation == Orientation.portrait? EdgeInsets.symmetric(horizontal: 0.05.sh):EdgeInsets.symmetric(horizontal: 0.09.sh),
        child: Column(
            
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(pokemon.name ?? '',style: Constants.getPokemonNameLandsTextStyele(),)),
                Text('#${pokemon.num}',style: Constants.getPokemonNameTextStyele(),)
              ],
            ),
            //SizedBox(height: 0.01.sh,),
            Chip(
              label: Text(
                style: TextStyle(color: Colors.white),
                pokemon.type?.join(' , ')?? '')),
          ],
        ),
        ),
      );
    
  }
}
