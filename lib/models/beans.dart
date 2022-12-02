// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

/**
 * ashary.gartanto@gmail.com
 * beans model
 */
class Beans extends Equatable {
  final String id;
  final String name;
  final String description;
  const Beans({
    required this.id,
    required this.name,
    required this.description,
  });

  Beans copyWith({
    String? id,
    String? name,
    String? description,
  }) {
    return Beans(
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

  factory Beans.fromMap(Map<String, dynamic> map) {
    return Beans(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Beans.fromJson(String source) =>
      Beans.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, description];
}
