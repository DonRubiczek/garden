import 'package:floor/floor.dart';
import 'package:garden/entity/type.dart';

@dao
abstract class TypeDao {
  @Query('SELECT * FROM Type ORDER BY id DESC')
  Future<List<Type>> findAllTypes();

  @insert
  Future<void> insertType(Type type);

  @update
  Future<void> editType(Type type);
}
