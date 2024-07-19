import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';

class PokeApi {
  static String url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> list = [];

    var result = await Dio().get(url);
   
    var pokeList = jsonDecode(result.data)['pokemon'];
    if (pokeList is List) {
      list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
    } else {
      return [];
    }

    return list;
  }
}



/* import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';

class PokemonApi {
  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> list = [];
    var result = await Dio().get(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');

    // JSON verisini çözümleme
    var data = result.data["pokemon"] as List;  // "pokemon" anahtarını kontrol edin
    list = data.map((e) => PokemonModel.fromMap(e)).toList();
    debugPrint(list.toString());

    return list;
  }
} */

/* 

 import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';

class PokemonApi {
  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> list = [];
    var result = await Dio().get(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');

    // JSON verisini çözümleme
    var data = result.data['pokemon'] as List;  // "pokemon" anahtarını kontrol edin
    list = data.map((e) => PokemonModel.fromMap(e)).toList();
    debugPrint(list.toString());

    return list;
  }
} */
 
/*  import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';

class PokemonApi {
  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> list = [];
    var result = await Dio().get(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');

    var pokeList =
        (result.data as List).map((e) => PokemonModel.fromMap(e)).toList();
    debugPrint(pokeList.toString());

    return list;
  }
} */
 