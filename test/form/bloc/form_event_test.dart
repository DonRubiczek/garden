import 'package:flutter_test/flutter_test.dart';
import 'package:garden/form/bloc/form_bloc.dart';
import 'package:garden/model/plant_data.dart';

void main() {
  group(
    'FormEvent',
    () {
      group(
        'changePlantProperty',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                FormEvent.changePlantProperty(
                  plant: PlantData(
                    date: '20001010',
                    name: 'plant1',
                    type: 'plant',
                  ),
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              final plant = PlantData(
                date: '20001010',
                name: 'plant1',
                type: 'plant',
              );
              expect(
                FormEvent.changePlantProperty(
                  plant: plant,
                ),
                equals(
                  FormEvent.changePlantProperty(
                    plant: plant,
                  ),
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              final plant = PlantData(
                date: '20001010',
                name: 'plant1',
                type: 'plant',
              );
              final plant1 = PlantData(
                date: '20001010',
                name: 'plant2',
                type: 'plant1',
              );
              expect(
                FormEvent.changePlantProperty(
                  plant: plant1,
                ),
                isNot(
                  FormEvent.changePlantProperty(
                    plant: plant,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'addPlant',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                FormEvent.addPlant(
                  plant: PlantData(
                    date: '20001010',
                    type: 'plant',
                    name: 'plant',
                  ),
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              final plant = PlantData(
                date: '20001010',
                type: 'plant',
                name: 'plant',
              );
              expect(
                FormEvent.addPlant(
                  plant: plant,
                ),
                equals(
                  FormEvent.addPlant(
                    plant: plant,
                  ),
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              final plant = PlantData(
                date: '20001010',
                type: 'plant',
                name: 'plant',
              );
              final plant1 = PlantData(
                date: '20011010',
                type: 'plan1t',
                name: 'plant1',
              );

              expect(
                FormEvent.addPlant(
                  plant: plant,
                ),
                isNot(
                  FormEvent.addPlant(
                    plant: plant1,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'editPlant',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                FormEvent.editPlant(
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
              final plant = PlantData(
                date: '20001010',
                name: 'Plant1',
                type: 'Type1',
              );

              expect(
                FormEvent.editPlant(
                  plant: plant,
                ),
                equals(
                  FormEvent.editPlant(
                    plant: plant,
                  ),
                ),
              );
            },
          );

          test(
            'differs on different values',
            () {
              final plant = PlantData(
                date: '20001010',
                name: 'Plant1',
                type: 'Type1',
              );

              final plant1 = PlantData(
                date: '20001010',
                name: 'Plant2',
                type: 'Type2',
              );

              expect(
                FormEvent.editPlant(
                  plant: plant,
                ),
                isNot(
                  FormEvent.editPlant(
                    plant: plant1,
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
