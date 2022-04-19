import 'package:garden/database/database.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/repository/plant_respository.dart';
import 'package:garden/resources/resources.dart';

abstract class Backend {
  HomeBloc get homeBloc;
  Resources get resources;
  PlantRepository get plantRepository;
}

class AppBackend extends Backend {
  AppBackend({
    required this.plantRepository,
    required this.homeBloc,
    required this.resources,
  });

  @override
  final PlantRepository plantRepository;
  @override
  final HomeBloc homeBloc;
  @override
  final Resources resources;

  static late AppBackend _instance;
  static AppBackend get instance {
    return _instance;
  }

  static Future<AppBackend> init() async {
    final appDatabase =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();

    await appDatabase.database.execute('DELETE FROM Type');
    await appDatabase.database.execute('DELETE FROM Plant');

    await appDatabase.database.insert('Type', {'name': 'alpines'});
    await appDatabase.database.insert('Type', {'name': 'aquatic'});
    await appDatabase.database.insert('Type', {'name': 'bulbs'});
    await appDatabase.database.insert('Type', {'name': 'succulents'});
    await appDatabase.database.insert('Type', {'name': 'carnivorous'});
    await appDatabase.database.insert('Type', {'name': 'climbers'});
    await appDatabase.database.insert('Type', {'name': 'ferns'});
    await appDatabase.database.insert('Type', {'name': 'grasses'});
    await appDatabase.database.insert('Type', {'name': 'threes'});

    final types = await appDatabase.typeDao.findAllTypes();
    final resources = Resources(plantTypes: types.map((e) => e.name).toList());

    final plantRepository = PlantRepository(appDatabase.plantDao);

    final homeBloc = HomeBloc(plantRepository: plantRepository);

    _instance = AppBackend(
      plantRepository: plantRepository,
      homeBloc: homeBloc,
      resources: resources,
    );

    return instance;
  }
}
