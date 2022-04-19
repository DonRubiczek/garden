import 'package:flutter_test/flutter_test.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/model/plant_data.dart';

void main() {
  group(
    'HomeState',
    () {
      group(
        'initial',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                const HomeState.initial(),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              const stateA = HomeState.initial();
              const stateB = HomeState.initial();
              expect(
                stateA,
                equals(
                  stateB,
                ),
              );
            },
          );
        },
      );

      group(
        'initialized',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                HomeState.initialized(
                  plants: [
                    PlantData(name: 'name', type: 'type', date: '20221010'),
                  ],
                  pageKey: 0,
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              final plantList = [
                PlantData(name: 'name', type: 'type', date: '20221010')
              ];

              final stateA = HomeState.initialized(
                plants: plantList,
                pageKey: 0,
              );
              final stateB = HomeState.initialized(
                plants: plantList,
                pageKey: 0,
              );
              expect(
                stateA,
                equals(
                  stateB,
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              final nextPagePlants = [
                PlantData(name: 'name', type: 'type', date: '20221010'),
                PlantData(name: 'name1', type: 'type1', date: '20221012')
              ];

              final nextPagePlants1 = [
                PlantData(name: 'name2', type: 'type2', date: '20221010'),
                PlantData(name: 'name3', type: 'type3', date: '20221012')
              ];

              final stateA =
                  HomeState.initialized(plants: nextPagePlants, pageKey: 0);
              final stateB =
                  HomeState.initialized(plants: nextPagePlants1, pageKey: 0);

              expect(
                stateA,
                isNot(
                  equals(
                    stateB,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'listNextPage',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                HomeState.listNextPage(
                  plants: [
                    PlantData(name: 'name', type: 'type', date: '20221010'),
                    PlantData(name: 'name1', type: 'type1', date: '20221012')
                  ],
                  pageKey: 0,
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              final matchedPlants = [
                PlantData(name: 'name', type: 'type', date: '20221010'),
                PlantData(name: 'name1', type: 'type1', date: '20221012')
              ];

              final stateA = HomeState.listNextPage(
                plants: matchedPlants,
                pageKey: 0,
              );
              final stateB = HomeState.listNextPage(
                plants: matchedPlants,
                pageKey: 0,
              );

              expect(
                stateA,
                equals(
                  stateB,
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              final nextPagePlants = [
                PlantData(name: 'name', type: 'type', date: '20221010'),
                PlantData(name: 'name1', type: 'type1', date: '20221012')
              ];

              final nextPagePlants1 = [
                PlantData(name: 'name2', type: 'type2', date: '20221010'),
                PlantData(name: 'name3', type: 'type3', date: '20221012')
              ];

              final stateA = HomeState.listNextPage(
                plants: nextPagePlants,
                pageKey: 0,
              );
              final stateB = HomeState.listNextPage(
                plants: nextPagePlants1,
                pageKey: 1,
              );

              expect(
                stateA,
                isNot(
                  equals(
                    stateB,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'error',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                const HomeState.error(
                  message: 'Error ocurred',
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              const stateA = HomeState.error(
                message: 'Error ocurred',
              );
              const stateB = HomeState.error(
                message: 'Error ocurred',
              );

              expect(
                stateA,
                equals(
                  stateB,
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              const stateA = HomeState.error(
                message: 'Error ocurred',
              );
              const stateB = HomeState.error(
                message: 'Error 1 ocurred',
              );

              expect(
                stateA,
                isNot(
                  equals(
                    stateB,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'addedSuccessfully',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                HomeState.addedSuccessfully(
                  plant: PlantData(
                    name: 'name',
                    type: 'type',
                    date: '20221010',
                  ),
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              final newPlant = PlantData(
                name: 'name',
                type: 'type',
                date: '20221010',
              );

              final stateA = HomeState.addedSuccessfully(
                plant: newPlant,
              );
              final stateB = HomeState.addedSuccessfully(
                plant: newPlant,
              );

              expect(
                stateA,
                equals(
                  stateB,
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              final newPlant = PlantData(
                name: 'name',
                type: 'type',
                date: '20221010',
              );

              final newPlant1 = PlantData(
                name: 'name1',
                type: 'type1',
                date: '20221010',
              );

              final stateA = HomeState.addedSuccessfully(
                plant: newPlant,
              );
              final stateB = HomeState.addedSuccessfully(
                plant: newPlant1,
              );

              expect(
                stateA,
                isNot(
                  stateB,
                ),
              );
            },
          );
        },
      );

      group(
        'editedSuccessfully',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                HomeState.editedSuccessfully(
                  plant: PlantData(
                    name: 'name',
                    type: 'type',
                    date: '20221010',
                  ),
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              final newPlant = PlantData(
                name: 'name',
                type: 'type',
                date: '20221010',
              );

              final stateA = HomeState.editedSuccessfully(
                plant: newPlant,
              );
              final stateB = HomeState.editedSuccessfully(
                plant: newPlant,
              );

              expect(
                stateA,
                equals(
                  stateB,
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              final newPlant = PlantData(
                name: 'name',
                type: 'type',
                date: '20221010',
              );

              final newPlant1 = PlantData(
                name: 'name1',
                type: 'type1',
                date: '20221010',
              );

              final stateA = HomeState.editedSuccessfully(
                plant: newPlant,
              );
              final stateB = HomeState.editedSuccessfully(
                plant: newPlant1,
              );

              expect(
                stateA,
                isNot(
                  stateB,
                ),
              );
            },
          );
        },
      );
    },
  );
}
