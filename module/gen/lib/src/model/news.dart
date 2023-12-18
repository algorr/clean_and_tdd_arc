import 'package:flutter/foundation.dart';
import 'package:gen/src/model/attributes.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'news.g.dart';

@JsonSerializable()
@immutable
final class News with EquatableMixin {
  final String? type;
  final String? id;
  final Attributes? attributes;

  News({
    this.type,
    this.id,
    this.attributes,
  });

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);

  @override
  List<Object?> get props => [type, id, attributes];

  News copyWith({
    final String? type,
    final String? id,
    final Attributes? attributes,
  }) {
    return News(
      type: type ?? this.type,
      id: id ?? this.id,
      attributes: attributes ?? this.attributes,
    );
  }
}
