import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:garden/model/plant_data.dart';
import 'package:garden/repository/plant_respository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.plantRepository}) : super(const HomeInitial()) {
    on<HomeEvent>(
      (event, emit) async {
        try {
          if (event is HomeFetchPage) {
            final paginatedPlants = await plantRepository.findPaginatedPlants(
              event.id,
              '${event.plantName}%',
            );

            if (event.id == 0) {
              emit(
                HomeState.initialized(
                  plants: paginatedPlants,
                  pageKey: 0,
                ),
              );

              currentPageKey = 0;
            } else {
              emit(
                HomeState.listNextPage(
                  plants: paginatedPlants,
                  pageKey: ++currentPageKey,
                ),
              );
            }
          } else if (event is HomePlantAdded) {
            emit(
              HomeState.addedSuccessfully(
                plant: event.plant,
              ),
            );

            final paginatedPlants =
                await plantRepository.findPaginatedPlants(0, '%');

            emit(
              HomeState.initialized(
                plants: paginatedPlants,
                pageKey: 0,
              ),
            );

            currentPageKey = 0;
          } else if (event is HomePlantEdited) {
            emit(
              HomeState.editedSuccessfully(
                plant: event.plant,
              ),
            );
          }
        } catch (error) {
          emit(
            HomeState.error(
              message: error.toString(),
            ),
          );
        }
      },
    );
  }

  int currentPageKey = 0;
  final PlantRepository plantRepository;
}
