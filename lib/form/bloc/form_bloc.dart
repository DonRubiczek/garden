import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:garden/entity/plant.dart';
import 'package:garden/model/plant_data.dart';
import 'package:garden/repository/plant_respository.dart';

part 'form_bloc.freezed.dart';
part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc({required this.plantRepository}) : super(const FormState.initial()) {
    on<FormEvent>(
      (event, emit) async {
        try {
          if (event is FormChangePlantProperty) {
            emit(
              FormState.plantPropertiesChanged(
                plant: event.plant,
              ),
            );
          } else if (event is FormAddPlant) {
            if (_verifyDataCorrectness(event.plant)) {
              await plantRepository.insertPlant(event.plant);

              emit(
                FormState.plantCreated(
                  plant: event.plant,
                ),
              );
            } else {
              emit(
                const FormState.error(
                  message: 'Cannot add empty data. Fill all plant '
                      'properties first and then save changes.',
                ),
              );
            }
          } else if (event is FormEditPlant) {
            if (_verifyDataCorrectness(event.plant)) {
              await plantRepository.editPlant(event.plant);

              emit(
                FormState.plantUpdated(
                  plant: event.plant,
                ),
              );
            } else {
              emit(
                const FormState.error(
                  message: 'Cannot add empty data. Fill all plant '
                      'properties first and then save changes.',
                ),
              );
            }
          }
        } catch (error) {
          emit(
            FormState.error(
              message: error.toString(),
            ),
          );
        }
      },
    );
  }

  final PlantRepository plantRepository;
  Plant? plant;

  bool _verifyDataCorrectness(PlantData plant) {
    if (plant.date.isEmpty || plant.name.isEmpty || plant.type.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
