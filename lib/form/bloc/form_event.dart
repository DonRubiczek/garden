part of 'form_bloc.dart';

@freezed
class FormEvent with _$FormEvent {
  const factory FormEvent.changePlantProperty({
    required PlantData plant,
  }) = FormChangePlantProperty;

  const factory FormEvent.addPlant({
    required PlantData plant,
  }) = FormAddPlant;

  const factory FormEvent.editPlant({
    required PlantData plant,
  }) = FormEditPlant;
}
