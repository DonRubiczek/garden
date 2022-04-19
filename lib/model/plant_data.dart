import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_data.freezed.dart';

@freezed
class PlantData with _$PlantData {
  factory PlantData({
    int? identifier,
    required String name,
    required String type,
    required String date,
  }) = _PlantData;
}
