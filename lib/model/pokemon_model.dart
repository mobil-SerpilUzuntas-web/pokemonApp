import 'dart:convert';

import 'package:flutter/material.dart';

PokemonModel pokemonModelFromJson(String str) =>
    PokemonModel.fromJson(json.decode(str));

String pokemonModelToJson(PokemonModel data) => json.encode(data.toJson());

class PokemonModel {
  int? id;
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  String? candy;
  int? candyCount;
  String? egg;
  double? spawnChance;
  double? avgSpawns;
  String? spawnTime;
  List<double>? multipliers;
  List<String>? weaknesses;
  List<Evolution>? prevEvolution;
  List<Evolution>? nextEvolution;

  PokemonModel({
    this.id,
    this.num,
    this.name,
    this.img,
    this.type,
    this.height,
    this.weight,
    this.candy,
    this.candyCount,
    this.egg,
    this.spawnChance,
    this.avgSpawns,
    this.spawnTime,
    this.multipliers,
    this.weaknesses,
    this.prevEvolution,
    this.nextEvolution,
  });

  @override
  String toString() {
    return name!;
  }

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        //services klasöründe ki bu foksiyon pokeList.map((e) => PokemonModel.fromJson(e)).toList(); için de url çekilen datalar map olarak gönderiliyor ve burada =>PokemonModel iel eşleştiriyoruz  id: json["id"], json id gelen map value id:ise PokemonModel ayit ve json id valuesini PokemonModel atıyoruz bu şekilde id: json["id"], sonra her hangi bir widgette Pokemon model nesnesi üretildigin de bu sınıftaki tüm verilere ulaşıyoruz ve datanın için deki bilgiye örner ımage ulaşmak istedigimiz de derek burada bilgiler oldugu için ımg widget alabiliyoruz ve ekrana basılıyor.
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: json["type"] != null
            ? List<String>.from(json["type"].map((x) => x))
            : null,
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"],
        egg: json["egg"],
        spawnChance: json["spawn_chance"]?.toDouble(),
        avgSpawns: json["avg_spawns"]?.toDouble(),
        spawnTime: json["spawn_time"],
        multipliers: json["multipliers"] != null
            ? List<double>.from(json["multipliers"].map((x) => x?.toDouble()))
            : null,
        weaknesses: json["weaknesses"] != null
            ? List<String>.from(json["weaknesses"].map((x) => x))
            : null,
        prevEvolution: json["prev_evolution"] != null
            ? List<Evolution>.from(
                json["prev_evolution"].map((x) => Evolution.fromJson(x)))
            : null,
        nextEvolution: json["next_evolution"] != null
            ? List<Evolution>.from(
                json["next_evolution"].map((x) => Evolution.fromJson(x)))
            : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": type != null ? List<dynamic>.from(type!.map((x) => x)) : null,
        "height": height,
        "weight": weight,
        "candy": candy,
        "candy_count": candyCount,
        "egg": egg,
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": multipliers != null
            ? List<dynamic>.from(multipliers!.map((x) => x))
            : null,
        "weaknesses": weaknesses != null
            ? List<dynamic>.from(weaknesses!.map((x) => x))
            : null,
        "prev_evolution": prevEvolution != null
            ? List<dynamic>.from(prevEvolution!.map((x) => x.toJson()))
            : null,
        "next_evolution": nextEvolution != null
            ? List<dynamic>.from(nextEvolution!.map((x) => x.toJson()))
            : null,
      };
}

class Evolution {
  String? num;
  String? name;

  Evolution({
    this.num,
    this.name,
  });

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        num: json["num"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
      };
  @override
  String toString() {
    return '$name';
  }
}


/* // To parse this JSON data, do
//
//     final pokemonModel = pokemonModelFromJson(jsonString);

import 'dart:convert';

PokemonModel pokemonModelFromJson(String str) => PokemonModel.fromJson(json.decode(str));

String pokemonModelToJson(PokemonModel data) => json.encode(data.toJson());

class PokemonModel {
    int ?id;
    String? num;
    String ?name;
    String ?img;
    List<String>? type;
    String ?height;
    String ?weight;
    String ?candy;
    int ?candyCount;
    String ?egg;
    double? spawnChance;
    double ?avgSpawns;
    String ?spawnTime;
    List<double>? multipliers;
    List<String> ?weaknesses;
    List<Evolution>? prevEvolution;
    List<Evolution> ?nextEvolution;

    PokemonModel({
        this.id,
        this.num,
        this.name,
        this.img,
        this.type,
        this.height,
        this.weight,
        this.candy,
        this.candyCount,
        this.egg,
        this.spawnChance,
        this.avgSpawns,
        this.spawnTime,
        this.multipliers,
        this.weaknesses,
        this.prevEvolution,
        this.nextEvolution,
    });

    factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((x) => x)),
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"],
        egg: json["egg"],
        spawnChance: json["spawn_chance"].toDouble(),
        avgSpawns: json["avg_spawns"].toDouble(),
        spawnTime: json["spawn_time"],
        multipliers: List<double>.from(json["multipliers"].map((x) => x.toDouble())),
        weaknesses: List<String>.from(json["weaknesses"].map((x) => x)),
        prevEvolution: List<Evolution>.from(json["prev_evolution"].map((x) => Evolution.fromJson(x))),
        nextEvolution: List<Evolution>.from(json["next_evolution"].map((x) => Evolution.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": List<dynamic>.from(type!.map((x) => x)),
        "height": height,
        "weight": weight,
        "candy": candy,
        "candy_count": candyCount,
        "egg": egg,
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": List<dynamic>.from(multipliers!.map((x) => x)),
        "weaknesses": List<dynamic>.from(weaknesses!.map((x) => x)),
        "prev_evolution": List<dynamic>.from(prevEvolution!.map((x) => x.toJson())),
        "next_evolution": List<dynamic>.from(nextEvolution!.map((x) => x.toJson())),
    };
}

class Evolution {
    String? num;
    String? name;

    Evolution({
        this.num,
        this.name,
    });

    factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        num: json["num"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
    };
} */


/* import 'dart:convert';

PokemonModel pokemonModelFromMap(String str) => PokemonModel.fromMap(json.decode(str));

String pokemonModelToMap(PokemonModel data) => json.encode(data.toMap());

class PokemonModel {
  final int id;
  final String num;
  final String name;
  final String img;
  final List<String> type;
  final String height;
  final String weight;
  final String candy;
  final int? candyCount;  // null olabileceği için '?' ekledim
  final String egg;
  final double spawnChance;
  final double avgSpawns;
  final String spawnTime;
  final List<double>? multipliers;  // null olabileceği için '?' ekledim
  final List<String> weaknesses;
  final List<Evolution>? prevEvolution;  // null olabileceği için '?' ekledim
  final List<Evolution>? nextEvolution;  // null olabileceği için '?' ekledim

  PokemonModel({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy,
    required this.candyCount,
    required this.egg,
    required this.spawnChance,
    required this.avgSpawns,
    required this.spawnTime,
    required this.multipliers,
    required this.weaknesses,
    required this.prevEvolution,
    required this.nextEvolution,
  });

  factory PokemonModel.fromMap(Map<String, dynamic> json) => PokemonModel(
    id: json["id"],
    num: json["num"],
    name: json["name"],
    img: json["img"],
    type: List<String>.from(json["type"].map((x) => x)),
    height: json["height"],
    weight: json["weight"],
    candy: json["candy"],
    candyCount: json["candy_count"] == null ? null : json["candy_count"],
    egg: json["egg"],
    spawnChance: json["spawn_chance"]?.toDouble(),
    avgSpawns: json["avg_spawns"]?.toDouble(),
    spawnTime: json["spawn_time"],
    multipliers: json["multipliers"] == null ? null : List<double>.from(json["multipliers"].map((x) => x?.toDouble())),
    weaknesses: List<String>.from(json["weaknesses"].map((x) => x)),
    prevEvolution: json["prev_evolution"] == null ? null : List<Evolution>.from(json["prev_evolution"].map((x) => Evolution.fromMap(x))),
    nextEvolution: json["next_evolution"] == null ? null : List<Evolution>.from(json["next_evolution"].map((x) => Evolution.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "num": num,
    "name": name,
    "img": img,
    "type": List<dynamic>.from(type.map((x) => x)),
    "height": height,
    "weight": weight,
    "candy": candy,
    "candy_count": candyCount,
    "egg": egg,
    "spawn_chance": spawnChance,
    "avg_spawns": avgSpawns,
    "spawn_time": spawnTime,
    "multipliers": multipliers == null ? null : List<dynamic>.from(multipliers!.map((x) => x)),
    "weaknesses": List<dynamic>.from(weaknesses.map((x) => x)),
    "prev_evolution": prevEvolution == null ? null : List<dynamic>.from(prevEvolution!.map((x) => x.toMap())),
    "next_evolution": nextEvolution == null ? null : List<dynamic>.from(nextEvolution!.map((x) => x.toMap())),
  };
}

class Evolution {
  final String num;
  final String name;

  Evolution({
    required this.num,
    required this.name,
  });

  factory Evolution.fromMap(Map<String, dynamic> json) => Evolution(
    num: json["num"],
    name: json["name"],
  );

  Map<String, dynamic> toMap() => {
    "num": num,
    "name": name,
  };
}








/* import 'dart:convert';

PokemonModel pokemonModelFromMap(String str) => PokemonModel.fromMap(json.decode(str));

String pokemonModelToMap(PokemonModel data) => json.encode(data.toMap());

class PokemonModel {
  final int id;
  final String num;
  final String name;
  final String img;
  final List<String> type;
  final String height;
  final String weight;
  final String candy;
  final int? candyCount;  // null olabileceği için '?' ekledim
  final String egg;
  final double spawnChance;
  final double avgSpawns;
  final String spawnTime;
  final List<double>? multipliers;  // null olabileceği için '?' ekledim
  final List<String> weaknesses;
  final List<Evolution>? prevEvolution;  // null olabileceği için '?' ekledim
  final List<Evolution>? nextEvolution;  // null olabileceği için '?' ekledim

  PokemonModel({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy,
    required this.candyCount,
    required this.egg,
    required this.spawnChance,
    required this.avgSpawns,
    required this.spawnTime,
    required this.multipliers,
    required this.weaknesses,
    required this.prevEvolution,
    required this.nextEvolution,
  });

  factory PokemonModel.fromMap(Map<String, dynamic> json) => PokemonModel(
    id: json["id"],
    num: json["num"],
    name: json["name"],
    img: json["img"],
    type: List<String>.from(json["type"].map((x) => x)),
    height: json["height"],
    weight: json["weight"],
    candy: json["candy"],
    candyCount: json["candy_count"] == null ? null : json["candy_count"],
    egg: json["egg"],
    spawnChance: json["spawn_chance"]?.toDouble(),
    avgSpawns: json["avg_spawns"]?.toDouble(),
    spawnTime: json["spawn_time"],
    multipliers: json["multipliers"] == null ? null : List<double>.from(json["multipliers"].map((x) => x?.toDouble())),
    weaknesses: List<String>.from(json["weaknesses"].map((x) => x)),
    prevEvolution: json["prev_evolution"] == null ? null : List<Evolution>.from(json["prev_evolution"].map((x) => Evolution.fromMap(x))),
    nextEvolution: json["next_evolution"] == null ? null : List<Evolution>.from(json["next_evolution"].map((x) => Evolution.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "num": num,
    "name": name,
    "img": img,
    "type": List<dynamic>.from(type.map((x) => x)),
    "height": height,
    "weight": weight,
    "candy": candy,
    "candy_count": candyCount,
    "egg": egg,
    "spawn_chance": spawnChance,
    "avg_spawns": avgSpawns,
    "spawn_time": spawnTime,
    "multipliers": multipliers == null ? null : List<dynamic>.from(multipliers!.map((x) => x)),
    "weaknesses": List<dynamic>.from(weaknesses.map((x) => x)),
    "prev_evolution": prevEvolution == null ? null : List<dynamic>.from(prevEvolution!.map((x) => x.toMap())),
    "next_evolution": nextEvolution == null ? null : List<dynamic>.from(nextEvolution!.map((x) => x.toMap())),
  };
}

class Evolution {
  final String num;
  final String name;

  Evolution({
    required this.num,
    required this.name,
  });

  factory Evolution.fromMap(Map<String, dynamic> json) => Evolution(
    num: json["num"],
    name: json["name"],
  );

  Map<String, dynamic> toMap() => {
    "num": num,
    "name": name,
  };
}
 */ */