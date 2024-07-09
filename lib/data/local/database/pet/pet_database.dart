import 'dart:async';

import 'package:floor/floor.dart';
import 'package:pets_care/data/local/database/pet/pet_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../../model/pet/pet.dart';

part 'pet_database.g.dart';

@Database(version: 1, entities: [Pet])
abstract class PetDatabase extends FloorDatabase {
  PetDao get petDao;
}