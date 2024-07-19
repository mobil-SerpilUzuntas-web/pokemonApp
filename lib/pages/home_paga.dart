import 'package:flutter/material.dart';
import 'package:pokemon_bilgileri/widget/app_title.dart';
import 'package:pokemon_bilgileri/widget/pokemon_list.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
        body: OrientationBuilder(
      // ignore: prefer_const_constructors
      builder: (context, orientation) => Stack(
        children: const [
          Column(
            children: [
              //AppTitle Anasayfa açılısında gelen AppBar kısmı özel yapıldı 
             AppTitle(),
             //Burası Anasayfanın Liste bölümü PokemonList  Widget  geliyor
             Expanded(
              child: PokemonList()
              )],
          )
        ],
      ),
    ));
  }
}


/*  OrientationBuilder(
        builder: (context, orientation) => const Stack(
          children: [
            Column(
                children: [
                  AppTitle(), 
                  Expanded(child: PokemonList())
                ],
            ),
          ],
        ),
      ), */

/* import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokemon_bilgileri/widget/app_title.dart';

import 'package:pokemon_bilgileri/widget/pokemon_widget.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [  
         
        AppTitle(),
        Expanded(child: const PokemonList()) 
         ]
      
      ),
    );
  }
}
 */