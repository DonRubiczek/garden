import 'package:floor/floor.dart';

@entity
class Type {
  Type({
    this.id,
    required this.name,
  });

  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String name;
}
