import 'package:garden/database/plant_dao.dart';
import 'package:garden/entity/plant.dart';
import 'package:garden/model/plant_data.dart';

class PlantRepository {
  PlantRepository(this._plantDao);

  final PlantDao _plantDao;

  Future<List<PlantData>> findPaginatedPlants(int id, String name) async {
    final paginatedPlants = await _plantDao.findPaginatedPlants(id, name);

    return paginatedPlants
        .map(
          (e) => PlantData(
            identifier: e.id,
            name: e.name,
            type: e.type,
            date: e.date,
          ),
        )
        .toList();
  }

  Future<void> insertPlant(PlantData data) async {
    return _plantDao.insertPlant(
      Plant(
        id: data.identifier,
        name: data.name,
        type: data.type,
        date: data.date,
      ),
    );
  }

  Future<void> editPlant(PlantData data) async {
    return _plantDao.editPlant(
      Plant(
        id: data.identifier,
        name: data.name,
        type: data.type,
        date: data.date,
      ),
    );
  }
}
