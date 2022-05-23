// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorMyFloorDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$MyFloorDatabaseBuilder databaseBuilder(String name) =>
      _$MyFloorDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$MyFloorDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$MyFloorDatabaseBuilder(null);
}

class _$MyFloorDatabaseBuilder {
  _$MyFloorDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$MyFloorDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$MyFloorDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<MyFloorDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$MyFloorDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$MyFloorDatabase extends MyFloorDatabase {
  _$MyFloorDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ProductsDao? _productsDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
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
            'CREATE TABLE IF NOT EXISTS `Products` (`product_id` INTEGER, `productName` TEXT, `state` INTEGER, `bundle` INTEGER, `quantity` REAL, PRIMARY KEY (`product_id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ProductsDao get productsDao {
    return _productsDaoInstance ??= _$ProductsDao(database, changeListener);
  }
}

class _$ProductsDao extends ProductsDao {
  _$ProductsDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _productsInsertionAdapter = InsertionAdapter(
            database,
            'Products',
            (Products item) => <String, Object?>{
                  'product_id': item.product_id,
                  'productName': item.productName,
                  'state': item.state,
                  'bundle': item.bundle,
                  'quantity': item.quantity
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Products> _productsInsertionAdapter;

  @override
  Future<void> deleteAllProducts() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Products');
  }

  @override
  Stream<List<Products>> getAllProducts() {
    return _queryAdapter.queryListStream('SELECT * FROM Products',
        mapper: (Map<String, Object?> row) => Products(
            product_id: row['product_id'] as int?,
            productName: row['productName'] as String?,
            state: row['state'] as int?,
            bundle: row['bundle'] as int?,
            quantity: row['quantity'] as double?),
        queryableName: 'Products',
        isView: false);
  }

  @override
  Stream<Products?> deleteProductBYID(int id) {
    return _queryAdapter.queryStream('DELETE FROM Products WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Products(
            product_id: row['product_id'] as int?,
            productName: row['productName'] as String?,
            state: row['state'] as int?,
            bundle: row['bundle'] as int?,
            quantity: row['quantity'] as double?),
        arguments: [id],
        queryableName: 'Products',
        isView: false);
  }

  @override
  Future<void> insertProduct(Products product) async {
    await _productsInsertionAdapter.insert(product, OnConflictStrategy.abort);
  }
}
