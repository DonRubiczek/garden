// required package imports
import 'dart:async';

import 'package:floor/floor.dart';
import 'package:garden/database/plant_dao.dart';
import 'package:garden/database/type_dao.dart';
import 'package:garden/entity/plant.dart';
import 'package:garden/entity/type.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Plant, Type])
abstract class AppDatabase extends FloorDatabase {
  PlantDao get plantDao;
  TypeDao get typeDao;
}
