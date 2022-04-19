import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:garden/form/bloc/form_bloc.dart';
import 'package:garden/model/plant_data.dart';
import 'package:garden/repository/plant_respository.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/resources.dart';

class MockPlantRepository extends Mock implements PlantRepository {}

void main() {
  group(
    'FormBloc',
    () {
      late PlantRepository plantRepository;

      setUp(
        () async {
          plantRepository = MockPlantRepository();

          when(
            () => plantRepository.insertPlant(
              Resources.getPlant(),
            ),
          ).thenAnswer(
            (_) async {},
          );

          when(
            () => plantRepository.editPlant(
              Resources.getPlant(),
            ),
          ).thenAnswer(
            (_) async {},
          );
        },
      );
      test('initial state is initial', () {
        expect(
          FormBloc(plantRepository: plantRepository).state,
          equals(
            const FormState.initial(),
          ),
        );
      });

      blocTest<FormBloc, FormState>(
        'emits plantPropertiesChanged every time '
        'changePlantProperty is called',
        build: () => FormBloc(plantRepository: plantRepository),
        act: (bloc) => bloc
          ..add(
            FormEvent.changePlantProperty(
              plant: Resources.getPlant(),
            ),
          ),
        expect: () => [
          FormState.plantPropertiesChanged(
            plant: Resources.getPlant(),
          )
        ],
      );

      blocTest<FormBloc, FormState>(
        'emits plantCreated when addPlant '
        'is called with correct data',
        build: () => FormBloc(plantRepository: plantRepository),
        act: (bloc) => bloc.add(
          FormEvent.addPlant(
            plant: Resources.getPlant(),
          ),
        ),
        expect: () => [
          FormState.plantCreated(
            plant: Resources.getPlant(),
          ),
        ],
        verify: (FormBloc b) => verify(
          () => plantRepository.insertPlant(
            Resources.getPlant(),
          ),
        ).called(1),
      );

      blocTest<FormBloc, FormState>(
        'emits error when addPlant '
        'is called with incorrect data',
        build: () => FormBloc(plantRepository: plantRepository),
        act: (bloc) => bloc
          ..add(
            FormEvent.addPlant(
              plant: PlantData(date: '', name: '', type: ''),
            ),
          ),
        expect: () => [
          const FormState.error(
            message: 'Cannot add empty data. Fill all plant '
                'properties first and then save changes.',
          ),
        ],
        verify: (FormBloc b) => verifyNever(
          () => plantRepository.editPlant(
            PlantData(date: '', name: '', type: ''),
          ),
        ),
      );

      blocTest<FormBloc, FormState>(
        'emits plantUpdated when editPlant '
        'is called with correct data',
        build: () => FormBloc(plantRepository: plantRepository),
        act: (bloc) => bloc.add(
          FormEvent.editPlant(
            plant: Resources.getPlant(),
          ),
        ),
        expect: () => [
          FormState.plantUpdated(
            plant: Resources.getPlant(),
          ),
        ],
        verify: (FormBloc b) => verify(
          () => plantRepository.editPlant(
            Resources.getPlant(),
          ),
        ).called(1),
      );

      blocTest<FormBloc, FormState>(
        'emits error when editPlant '
        'is called with incorrect data',
        build: () => FormBloc(plantRepository: plantRepository),
        act: (bloc) => bloc.add(
          FormEvent.editPlant(
            plant: PlantData(date: '', name: '', type: ''),
          ),
        ),
        expect: () => [
          const FormState.error(
            message: 'Cannot add empty data. Fill all plant '
                'properties first and then save changes.',
          ),
        ],
        verify: (FormBloc b) => verifyNever(
          () => plantRepository.editPlant(
            PlantData(date: '', name: '', type: ''),
          ),
        ),
      );
    },
  );
}
