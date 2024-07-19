import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';
import 'package:pokemon_bilgileri/ui_helper.dart';


class PokeImageAndBall extends StatelessWidget {
   PokemonModel pokemon;
   PokeImageAndBall({required this.pokemon,super.key});

  @override
  Widget build(BuildContext context) {
     String pokeballImageUrl = 'images/pokeball.png';
    return Stack(
      
      children: [
  
        Image.asset(
          alignment: Alignment.bottomRight,
          color: Colors.blue,
          fit: BoxFit.cover,
           height: UlHelper.calculatePokemonImgbandBallSize(),
           width: UlHelper.calculatePokemonImgbandBallSize(), 
          pokeballImageUrl),
       Hero(
        tag: pokemon.id!,
         child: CachedNetworkImage(
          errorWidget: (context, url, error) => Image.asset('images/pokeball.png'),
          placeholder: (context, url) => const CircularProgressIndicator(color: Colors.red,),
          fit: BoxFit.cover,
           height: UlHelper.calculatePokemonImgbandBallSize(),
           width: UlHelper.calculatePokemonImgbandBallSize(), 
          alignment: Alignment.bottomRight,
          imageUrl:pokemon.img ?? ''),
       ),
      
       
      ],
    );
  }
}
