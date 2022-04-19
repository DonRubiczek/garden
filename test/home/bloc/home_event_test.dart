import 'package:flutter_test/flutter_test.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/model/plant_data.dart';

void main() {
  group(
    'HomeEvent',
    () {
      group(
        'fetchPage',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                const HomeEvent.fetchPage(
                  id: 0,
                  plantName: '',
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              expect(
                const HomeEvent.fetchPage(
                  id: 0,
                  plantName: '',
                ),
                equals(
                  const HomeEvent.fetchPage(
                    id: 0,
                    plantName: '',
                  ),
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              expect(
                const HomeEvent.fetchPage(
                  id: 0,
                  plantName: '',
                ),
                isNot(
                  const HomeEvent.fetchPage(
                    id: 2,
                    plantName: 'apple',
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'plantEdited',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                HomeEvent.plantEdited(
                  plant: PlantData(
                    date: '20001010',
                    name: 'Plant1',
                    type: 'Type1',
                  ),
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              expect(
                HomeEvent.plantEdited(
                  plant: PlantData(
                    date: '20001010',
                    name: 'Plant1',
                    type: 'Type1',
                  ),
                ),
                equals(
                  HomeEvent.plantEdited(
                    plant: PlantData(
                      date: '20001010',
                      name: 'Plant1',
                      type: 'Type1',
                    ),
                  ),
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              expect(
                HomeEvent.plantEdited(
                  plant: PlantData(
                    date: '20001010',
                    name: 'Plant1',
                    type: 'Type1',
                  ),
                ),
                isNot(
                  HomeEvent.plantEdited(
                    plant: PlantData(
                      date: '20001010',
                      name: 'Plant2',
                      type: 'Type2',
                    ),
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'plantAdded',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                HomeEvent.plantAdded(
                  plant: PlantData(
                    date: '20001010',
                    name: 'Plant1',
                    type: 'Type1',
                  ),
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              expect(
                HomeEvent.plantAdded(
                  plant: PlantData(
                    date: '20001010',
                    name: 'Plant1',
                    type: 'Type1',
                  ),
                ),
                equals(
                  HomeEvent.plantAdded(
                    plant: PlantData(
                      date: '20001010',
                      name: 'Plant1',
                      type: 'Type1',
                    ),
                  ),
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              expect(
                HomeEvent.plantAdded(
                  plant: PlantData(
                    date: '20001010',
                    name: 'Plant1',
                    type: 'Type1',
                  ),
                ),
                isNot(
                  HomeEvent.plantAdded(
                    plant: PlantData(
                      date: '20001010',
                      name: 'Plant2',
                      type: 'Type2',
                    ),
                  ),
                ),
              );
            },
          );
        },
      );
    },
  );
}
