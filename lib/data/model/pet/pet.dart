import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pet.g.dart';

@JsonSerializable()
@entity
class Pet {
  @primaryKey
  @JsonKey(name: "id")
  @ColumnInfo(name: "pet_id")
  final int id;

  @JsonKey(name: "name")
  @ColumnInfo(name: "pet_name")
  final String name;

  Pet({
    required this.id,
    required this.name,
  });

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  Map<String, dynamic> toJson() => _$PetToJson(this);
}