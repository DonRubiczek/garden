import 'package:garden/model/plant_data.dart';

class Resources {
  static List<PlantData> getPlantList() {
    return [
      PlantData(
        name: 'Plant1',
        type: 'aquatic',
        date: '2000-10-10',
        identifier: 1,
      ),
      PlantData(
        name: 'Plant2',
        type: 'aquatic',
        date: '2000-10-11',
        identifier: 2,
      ),
      PlantData(
        name: 'Plant3',
        type: 'aquatic',
        date: '2000-10-12',
        identifier: 3,
      ),
      PlantData(
        name: 'Plant4',
        type: 'aquatic',
        date: '2000-10-13',
        identifier: 4,
      ),
      PlantData(
        name: 'Plant5',
        type: 'threes',
        date: '2000-10-14',
        identifier: 5,
      ),
      PlantData(
        name: 'Plant6',
        type: 'grasses',
        date: '2000-10-15',
        identifier: 6,
      ),
      PlantData(
        name: 'Plant7',
        type: 'alpines',
        date: '2000-10-16',
        identifier: 7,
      ),
      PlantData(
        name: 'Plant8',
        type: 'bulbs',
        date: '2000-10-17',
        identifier: 8,
      ),
      PlantData(
        name: 'Plant9',
        type: 'succulents',
        date: '2000-10-18',
        identifier: 9,
      ),
      PlantData(
        name: 'Plant10',
        type: 'carnivorous',
        date: '2000-10-19',
        identifier: 10,
      ),
      PlantData(
        name: 'Plant11',
        type: 'climbers',
        date: '2000-10-20',
        identifier: 11,
      ),
      PlantData(
        name: 'Plant12',
        type: 'ferns',
        date: '2000-10-21',
        identifier: 12,
      ),
    ];
  }

  static PlantData getPlant() {
    return PlantData(name: 'Plant1', type: 'aquatic', date: '2000-10-10');
  }

  static List<String> getTypes() {
    return [
      'alpines',
      'aquatic',
      'bulbs',
      'succulents',
      'carnivorous',
      'climbers',
      'ferns',
      'grasses',
      'threes',
    ];
  }
}
