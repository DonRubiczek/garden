import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/repository/plant_respository.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/resources.dart';

class MockPlantRepository extends Mock implements PlantRepository {}

void main() {
  group(
    'HomeBloc',
    () {
      late PlantRepository plantRepository;

      setUp(
        () async {
          plantRepository = MockPlantRepository();

          when(
            () => plantRepository.findPaginatedPlants(
              0,
              'Plant1%',
            ),
          ).thenAnswer(
            (_) async => [
              Resources.getPlant(),
            ],
          );

          when(
            () => plantRepository.findPaginatedPlants(
              0,
              '%',
            ),
          ).thenAnswer(
            (_) async => Resources.getPlantList().take(10).toList(),
          );

          when(
            () => plantRepository.findPaginatedPlants(
              0,
              'NameNotFound%',
            ),
          ).thenAnswer(
            (_) async => [],
          );

          when(
            () => plantRepository.findPaginatedPlants(
              10,
              '%',
            ),
          ).thenAnswer(
            (_) async => Resources.getPlantList()
                .takeWhile((p) => p.identifier! > 10)
                .toList(),
          );
        },
      );

      test('initial state is initial', () {
        expect(
          HomeBloc(plantRepository: plantRepository).state,
          equals(
            const HomeState.initial(),
          ),
        );
      });

      blocTest<HomeBloc, HomeState>(
        'emits initialized with list of 10 plants with lowest ids if exists '
        'when fetchPage with id = 0 and empty plantName  is called',
        build: () => HomeBloc(plantRepository: plantRepository),
        act: (bloc) => bloc
          ..add(
            const HomeEvent.fetchPage(
              id: 0,
              plantName: '',
            ),
          ),
        expect: () => [
          HomeState.initialized(
            plants: Resources.getPlantList().take(10).toList(),
            pageKey: 0,
          ),
        ],
        verify: (_) {
          verify(
            () => plantRepository.findPaginatedPlants(0, '%'),
          ).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'emits listNextPage when fetchPage with id > 0 is called',
        build: () => HomeBloc(plantRepository: plantRepository),
        act: (bloc) => bloc.add(
          const HomeEvent.fetchPage(
            id: 10,
            plantName: '',
          ),
        ),
        expect: () => [
          HomeState.listNextPage(
            plants: Resources.getPlantList()
                .takeWhile((p) => p.identifier! > 10)
                .toList(),
            pageKey: 1,
          ),
        ],
        verify: (_) {
          verify(
            () => plantRepository.findPaginatedPlants(
              10,
              '%',
            ),
          ).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'emits initialized with empty plants when there are no plants '
        'matching added filtering name in database',
        build: () => HomeBloc(plantRepository: plantRepository),
        act: (bloc) => bloc.add(
          const HomeEvent.fetchPage(
            id: 0,
            plantName: 'NameNotFound',
          ),
        ),
        expect: () => [
          const HomeState.initialized(
            plants: [],
            pageKey: 0,
          ),
        ],
        verify: (_) {
          verify(() => plantRepository.findPaginatedPlants(0, 'NameNotFound%'))
              .called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'emits initialized with plants matching filtering name ',
        build: () => HomeBloc(plantRepository: plantRepository),
        act: (bloc) => bloc.add(
          const HomeEvent.fetchPage(
            plantName: 'Plant1',
            id: 0,
          ),
        ),
        expect: () => [
          HomeState.initialized(
            pageKey: 0,
            plants: [
              Resources.getPlant(),
            ],
          ),
        ],
        verify: (_) {
          verify(
            () => plantRepository.findPaginatedPlants(
              0,
              'Plant1%',
            ),
          ).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'emits addedSuccessfully with plant data '
        'and then initialized',
        build: () => HomeBloc(plantRepository: plantRepository),
        act: (bloc) => bloc
          ..add(
            HomeEvent.plantAdded(
              plant: Resources.getPlant(),
            ),
          ),
        expect: () => [
          HomeState.addedSuccessfully(
            plant: Resources.getPlant(),
          ),
          HomeState.initialized(
            plants: Resources.getPlantList().take(10).toList(),
            pageKey: 0,
          ),
        ],
        verify: (_) {
          verify(
            () => plantRepository.findPaginatedPlants(
              0,
              '%',
            ),
          ).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'emits editedSuccessfully with plant data '
        'of object edited to database due to user edition',
        build: () => HomeBloc(plantRepository: plantRepository),
        act: (bloc) => bloc
          ..add(
            HomeEvent.plantEdited(
              plant: Resources.getPlant(),
            ),
          ),
        expect: () => [
          HomeState.editedSuccessfully(
            plant: Resources.getPlant(),
          ),
        ],
      );
    },
  );
}
