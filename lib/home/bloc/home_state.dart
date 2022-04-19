part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.initialized({
    required List<PlantData> plants,
    required int pageKey,
  }) = HomeInitilized;
  const factory HomeState.editedSuccessfully({
    required PlantData plant,
  }) = HomeEditedSuccessfully;
  const factory HomeState.addedSuccessfully({
    required PlantData plant,
  }) = HomeAddedSuccessfully;
  const factory HomeState.listNextPage({
    required List<PlantData> plants,
    required int pageKey,
  }) = HomeNextPage;
  const factory HomeState.error({
    required String message,
  }) = HomeError;
}
