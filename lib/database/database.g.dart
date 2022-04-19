// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is
  ///  killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PlantDao? _plantDaoInstance;

  TypeDao? _typeDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
          database,
          startVersion,
          endVersion,
          migrations,
        );

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `Plant` (`id` INTEGER PRIMARY KEY '
          'AUTOINCREMENT, `name` TEXT NOT NULL, `type` TEXT NOT NULL, `date` '
          'TEXT NOT NULL)',
        );
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `Type` (`id` INTEGER PRIMARY KEY '
          'AUTOINCREMENT, `name` TEXT NOT NULL)',
        );

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PlantDao get plantDao {
    return _plantDaoInstance ??= _$PlantDao(database, changeListener);
  }

  @override
  TypeDao get typeDao {
    return _typeDaoInstance ??= _$TypeDao(database, changeListener);
  }
}

class _$PlantDao extends PlantDao {
  _$PlantDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _plantInsertionAdapter = InsertionAdapter(
          database,
          'Plant',
          (Plant item) => <String, Object?>{
            'id': item.id,
            'name': item.name,
            'type': item.type,
            'date': item.date
          },
        ),
        _plantUpdateAdapter = UpdateAdapter(
          database,
          'Plant',
          ['id'],
          (Plant item) => <String, Object?>{
            'id': item.id,
            'name': item.name,
            'type': item.type,
            'date': item.date
          },
        );

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Plant> _plantInsertionAdapter;

  final UpdateAdapter<Plant> _plantUpdateAdapter;

  @override
  Future<List<Plant>> findPaginatedPlants(int id, String name) async {
    return _queryAdapter.queryList(
      'SELECT * FROM Plant WHERE id > ?1 '
      'AND name LIKE ?2 ORDER BY id ASC LIMIT 10',
      mapper: (Map<String, Object?> row) => Plant(
        id: row['id'] as int?,
        name: row['name'] as String,
        type: row['type'] as String,
        date: row['date'] as String,
      ),
      arguments: [id, name],
    );
  }

  @override
  Future<void> insertPlant(Plant plant) async {
    await _plantInsertionAdapter.insert(plant, OnConflictStrategy.abort);
  }

  @override
  Future<void> editPlant(Plant plant) async {
    await _plantUpdateAdapter.update(plant, OnConflictStrategy.abort);
  }
}

class _$TypeDao extends TypeDao {
  _$TypeDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _typeInsertionAdapter = InsertionAdapter(database, 'Type',
            (Type item) => <String, Object?>{'id': item.id, 'name': item.name}),
        _typeUpdateAdapter = UpdateAdapter(database, 'Type', ['id'],
            (Type item) => <String, Object?>{'id': item.id, 'name': item.name});

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Type> _typeInsertionAdapter;

  final UpdateAdapter<Type> _typeUpdateAdapter;

  @override
  Future<List<Type>> findAllTypes() async {
    return _queryAdapter.queryList(
      'SELECT * FROM Type ORDER BY id DESC',
      mapper: (Map<String, Object?> row) => Type(
        id: row['id'] as int?,
        name: row['name'] as String,
      ),
    );
  }

  @override
  Future<void> insertType(Type type) async {
    await _typeInsertionAdapter.insert(type, OnConflictStrategy.abort);
  }

  @override
  Future<void> editType(Type type) async {
    await _typeUpdateAdapter.update(type, OnConflictStrategy.abort);
  }
}
