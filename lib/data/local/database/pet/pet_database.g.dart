// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorPetDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$PetDatabaseBuilder databaseBuilder(String name) =>
      _$PetDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$PetDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$PetDatabaseBuilder(null);
}

class _$PetDatabaseBuilder {
  _$PetDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$PetDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$PetDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<PetDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$PetDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$PetDatabase extends PetDatabase {
  _$PetDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PetDao? _petDaoInstance;

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
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Pet` (`pet_id` INTEGER NOT NULL, `pet_name` TEXT NOT NULL, PRIMARY KEY (`pet_id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PetDao get petDao {
    return _petDaoInstance ??= _$PetDao(database, changeListener);
  }
}

class _$PetDao extends PetDao {
  _$PetDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _petInsertionAdapter = InsertionAdapter(
            database,
            'Pet',
            (Pet item) =>
                <String, Object?>{'pet_id': item.id, 'pet_name': item.name},
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Pet> _petInsertionAdapter;

  @override
  Future<Pet?> getPet() async {
    return _queryAdapter.query('SELECT * FROM Pet LIMIT 1',
        mapper: (Map<String, Object?> row) =>
            Pet(id: row['pet_id'] as int, name: row['pet_name'] as String));
  }

  @override
  Stream<Pet?> findPetById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM Pet WHERE pet_id = ?1',
        mapper: (Map<String, Object?> row) =>
            Pet(id: row['pet_id'] as int, name: row['pet_name'] as String),
        arguments: [id],
        queryableName: 'Pet',
        isView: false);
  }

  @override
  Future<void> insertPet(Pet pet) async {
    await _petInsertionAdapter.insert(pet, OnConflictStrategy.replace);
  }
}
