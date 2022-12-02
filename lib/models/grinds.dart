// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

/**
 * ashary.gartanto@gmail.com
 * grind model
 */
class Grind extends Equatable {
  final String id;
  final String name;
  final String description;
  const Grind({
    required this.id,
    required this.name,
    required this.description,
  });

  Grind copyWith({
    String? id,
    String? name,
    String? description,
  }) {
    return Grind(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
    };
  }

  factory Grind.fromMap(Map<String, dynamic> map) {
    return Grind(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Grind.fromJson(String source) =>
      Grind.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, description];
}
