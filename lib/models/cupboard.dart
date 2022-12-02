// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

/**
 * ashary.gartanto@gmail.com
 * cupboard model
 */
class CupBoard extends Equatable {
  final String id;
  final String name;
  final String company;
  final String image;
  const CupBoard({
    required this.id,
    required this.name,
    required this.company,
    required this.image,
  });

  CupBoard copyWith({
    String? id,
    String? name,
    String? company,
    String? image,
  }) {
    return CupBoard(
      id: id ?? this.id,
      name: name ?? this.name,
      company: company ?? this.company,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'company': company,
      'image': image,
    };
  }

  factory CupBoard.fromMap(Map<String, dynamic> map) {
    return CupBoard(
      id: map['id'] as String,
      name: map['name'] as String,
      company: map['company'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CupBoard.fromJson(String source) =>
      CupBoard.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, company, image];
}
