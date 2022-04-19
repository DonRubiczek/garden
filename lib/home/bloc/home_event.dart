part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchPage({
    required int id,
    required String plantName,
  }) = HomeFetchPage;
  const factory HomeEvent.plantAdded({
    required PlantData plant,
  }) = HomePlantAdded;
  const factory HomeEvent.plantEdited({
    required PlantData plant,
  }) = HomePlantEdited;
}
