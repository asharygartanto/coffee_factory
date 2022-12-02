// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

/**
 * ashary.gartanto@gmail.com
 * Milk model
 */
class Milk extends Equatable {
  final String id;
  final String name;
  final String milkType;
  final double milkDose;
  const Milk({
    required this.id,
    required this.name,
    required this.milkType,
    required this.milkDose,
  });

  Milk copyWith({
    String? id,
    String? name,
    String? milkType,
    double? milkDose,
  }) {
    return Milk(
      id: id ?? this.id,
      name: name ?? this.name,
      milkType: milkType ?? this.milkType,
      milkDose: milkDose ?? this.milkDose,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'milkType': milkType,
      'milkDose': milkDose,
    };
  }

  factory Milk.fromMap(Map<String, dynamic> map) {
    return Milk(
      id: map['id'] as String,
      name: map['name'] as String,
      milkType: map['milkType'] as String,
      milkDose: map['milkDose'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Milk.fromJson(String source) =>
      Milk.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, milkType, milkDose];
}
