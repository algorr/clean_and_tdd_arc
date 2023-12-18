import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()
@immutable
final class Attributes with EquatableMixin {
  final String? title;
  final String? body;
  final DateTime? created;
  final DateTime? updated;

  Attributes({
    this.title,
    this.body,
    this.created,
    this.updated,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  List<Object?> get props => [title, body, created, updated];

  Attributes copyWith({
    final String? title,
    final String? body,
    final DateTime? created,
    final DateTime? updated,
  }) {
    return Attributes(
      title: title ?? this.title,
      body: body ?? this.body,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }
}
