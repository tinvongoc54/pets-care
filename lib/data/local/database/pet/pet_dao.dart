import 'package:floor/floor.dart';
import 'package:pets_care/data/model/pet/pet.dart';

@dao
abstract class PetDao {
  @Query('SELECT * FROM Pet LIMIT 1')
  Future<Pet?> getPet();

  @Query('SELECT * FROM Pet WHERE pet_id = :id')
  Stream<Pet?> findPetById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertPet(Pet pet);
}