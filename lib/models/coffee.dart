// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'beans.dart';
import 'grinds.dart';
import 'milks.dart';

/**
 * ashary.gartanto@gmail.com
 * coffee data
 */
class Coffee extends Equatable {
  final String id;
  final String name;
  final String description;
  final Beans beans;
  final Milk milk;
  final bool isSteamMilk;
  final Grind grind;
  final String image;
  final double coffeeDose;
  const Coffee({
    required this.id,
    required this.name,
    required this.description,
    required this.beans,
    required this.milk,
    required this.isSteamMilk,
    required this.grind,
    required this.image,
    required this.coffeeDose,
  });

  Coffee copyWith({
    String? id,
    String? name,
    String? description,
    Beans? beans,
    Milk? milk,
    bool? isSteamMilk,
    Grind? grind,
    String? image,
    double? coffeeDose,
  }) {
    return Coffee(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      beans: beans ?? this.beans,
      milk: milk ?? this.milk,
      isSteamMilk: isSteamMilk ?? this.isSteamMilk,
      grind: grind ?? this.grind,
      image: image ?? this.image,
      coffeeDose: coffeeDose ?? this.coffeeDose,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'beans': beans.toMap(),
      'milk': milk.toMap(),
      'isSteamMilk': isSteamMilk,
      'grind': grind.toMap(),
      'image': image,
      'coffeeDose': coffeeDose,
    };
  }

  factory Coffee.fromMap(Map<String, dynamic> map) {
    return Coffee(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      beans: Beans.fromMap(map['beans'] as Map<String, dynamic>),
      milk: Milk.fromMap(map['milk'] as Map<String, dynamic>),
      isSteamMilk: map['isSteamMilk'] as bool,
      grind: Grind.fromMap(map['grind'] as Map<String, dynamic>),
      image: map['image'] as String,
      coffeeDose: map['coffeeDose'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Coffee.fromJson(String source) =>
      Coffee.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
      description,
      beans,
      milk,
      isSteamMilk,
      grind,
      image,
      coffeeDose,
    ];
  }
}
