import 'package:floor/floor.dart';

@entity
class Plant {
  Plant({
    this.id,
    required this.name,
    required this.type,
    required this.date,
  });

  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String name;
  final String type;
  final String date;
}
