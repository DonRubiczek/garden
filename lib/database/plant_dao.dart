import 'package:floor/floor.dart';
import 'package:garden/entity/plant.dart';

@dao
abstract class PlantDao {
  @Query(
      'SELECT * FROM Plant WHERE id > :id AND name LIKE :name ORDER BY id ASC LIMIT 10')
  Future<List<Plant>> findPaginatedPlants(int id, String name);

  @insert
  Future<void> insertPlant(Plant plant);

  @update
  Future<void> editPlant(Plant plant);
}
