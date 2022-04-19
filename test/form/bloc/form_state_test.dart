import 'package:flutter_test/flutter_test.dart';
import 'package:garden/form/bloc/form_bloc.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/model/plant_data.dart';

void main() {
  group(
    'FormState',
    () {
      group(
        'initial',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                const FormState.initial(),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              const stateA = FormState.initial();
              const stateB = FormState.initial();
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
        'plantPropertiesChanged',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                FormState.plantPropertiesChanged(
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
              final plant = PlantData(
                name: 'name',
                type: 'type',
                date: '20221010',
              );

              final stateA = FormState.plantPropertiesChanged(
                plant: plant,
              );
              final stateB = FormState.plantPropertiesChanged(
                plant: plant,
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
              final plant = PlantData(
                name: 'name1',
                type: 'type1',
                date: '20221012',
              );

              final plant1 = PlantData(
                name: 'name2',
                type: 'type2',
                date: '20221012',
              );

              final stateA = FormState.plantPropertiesChanged(
                plant: plant,
              );
              final stateB = FormState.plantPropertiesChanged(
                plant: plant1,
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
        'plantUpdated',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                FormState.plantUpdated(
                  plant:
                      PlantData(name: 'name', type: 'type', date: '20221010'),
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              final plant =
                  PlantData(name: 'name', type: 'type', date: '20221010');

              final stateA = FormState.plantUpdated(plant: plant);
              final stateB = FormState.plantUpdated(plant: plant);

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
              final plant =
                  PlantData(name: 'name', type: 'type', date: '20221010');

              final plant1 =
                  PlantData(name: 'name1', type: 'type2', date: '20221010');

              final stateA = FormState.plantUpdated(plant: plant);
              final stateB = FormState.plantUpdated(plant: plant1);

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
        'plantCreated',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                FormState.plantCreated(
                  plant:
                      PlantData(name: 'name', type: 'type', date: '20221010'),
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              final plant =
                  PlantData(name: 'name', type: 'type', date: '20221010');

              final stateA = FormState.plantCreated(
                plant: plant,
              );
              final stateB = FormState.plantCreated(
                plant: plant,
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
              final plant1 =
                  PlantData(name: 'name', type: 'type', date: '20221010');

              final plant2 =
                  PlantData(name: 'name2', type: 'type2', date: '20221010');

              final stateA = FormState.plantCreated(
                plant: plant1,
              );
              final stateB = FormState.plantCreated(
                plant: plant2,
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
                const FormState.error(
                  message: 'Error ocurred',
                ),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              const stateA = FormState.error(
                message: 'Error ocurred',
              );
              const stateB = FormState.error(
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
        'loading',
        () {
          test(
            'can be instantiated',
            () {
              expect(
                const FormState.loading(),
                isNotNull,
              );
            },
          );

          test(
            'supports value equality',
            () {
              const stateA = FormState.loading();
              const stateB = FormState.loading();

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
    },
  );
}
