
import 'package:pets_care/data/local/database/pet/pet_dao.dart';
import 'package:pets_care/data/local/database/pet/pet_database.dart';

import '../injection.dart';

abstract class DatabaseModule {
  static Future<void> initModule() async {
    //using inMemoryDatabaseBuilder or databaseBuilder(name:"")
    final petDatabase =
        await $FloorPetDatabase.databaseBuilder('pet_database.db').build();

    getIt
      .registerFactory<PetDao>(() {
        return petDatabase.petDao;
      });
  }
}
