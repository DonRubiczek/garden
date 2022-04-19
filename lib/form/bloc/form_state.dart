part of 'form_bloc.dart';

@freezed
class FormState with _$FormState {
  const factory FormState.initial() = FormInitial;

  const factory FormState.plantPropertiesChanged({
    required PlantData plant,
  }) = FormPlantPropertiesChanged;

  const factory FormState.plantUpdated({
    required PlantData plant,
  }) = FormPlantUpdated;

  const factory FormState.plantCreated({
    required PlantData plant,
  }) = FormPlantCreated;

  const factory FormState.error({
    required String message,
  }) = FormError;

  const factory FormState.loading() = FormLoading;
}
