import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';
import 'package:pokemon_bilgileri/pages/home_paga.dart';
import 'package:pokemon_bilgileri/ui_helper.dart';
import 'package:pokemon_bilgileri/widget/poke_information.dart';
import 'package:pokemon_bilgileri/widget/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  //Sınıfın İnstance üretiyor ve bu şekilde sınıfın bütün özelliklerine ve metotlarına Ulaşılabilme olanagı saglanıyor
  final PokemonModel pokemon;
  const DetailPage({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitBody(context, pokeballImageUrl)
        : _buildLandscapeBody(context, pokeballImageUrl);
  }

  Scaffold _buildLandscapeBody(BuildContext context, String pokeballImageUrl) {
    return Scaffold(
        backgroundColor: UlHelper.getColorFromType(pokemon.type![0]),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: UlHelper.getIconPadding(),
                child: IconButton(
                    iconSize: 18.w,
                    onPressed: () {
                      //IconButtonuna tıklanınca gidecegi sayfa
                      Navigator.of(context).pop();
                    },
                    //geri butonu
                    icon: Icon(Icons.arrow_back_ios)),
              ),
              Expanded(
                child:
                Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                        
                          children: [
                            PokeNameType(pokemon: pokemon),
                            Expanded(
                              child: Hero(
                                tag: pokemon.id!,
                                child: CachedNetworkImage(
                                  imageUrl: pokemon.img ?? '',
                                  height: 0.02.sw,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 6, child: Padding(
                            padding: UlHelper.getDefaultPadding(),
                            child: PokeInformation(pokemon: pokemon),
                          )),
                    ],
                  ),
                
              )
            ],
          ),
        ));
  }

  Scaffold _buildPortraitBody(BuildContext context, String pokeballImageUrl) {
    return Scaffold(
      backgroundColor: UlHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UlHelper.getIconPadding(),
            child: IconButton(
                iconSize: 18.w,
                onPressed: () {
                  //IconButtonuna tıklanınca gidecegi sayfa
                  Navigator.of(context).pop();
                },
                //geri butonu
                icon: Icon(Icons.arrow_back_ios)),
          ),
          PokeNameType(pokemon: pokemon),
          SizedBox(
            height: 0.02.h,
          ),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(pokeballImageUrl,
                    height: 0.15.sh, fit: BoxFit.fitHeight),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0.12.sh,
                  child: PokeInformation(pokemon: pokemon)),
              Align(
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: pokemon.id!,
                  child: CachedNetworkImage(
                    imageUrl: pokemon.img ?? '',
                    height: 0.25.sh,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ],
          ))
        ],
      )),
    );
  }
}
