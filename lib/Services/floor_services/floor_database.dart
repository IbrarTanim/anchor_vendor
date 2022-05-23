
import 'package:anchor_vendor/Services/floor_services/daos/new_products_dao.dart';
import 'package:anchor_vendor/Services/floor_services/models/new_products_model.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

 part 'floor_database.g.dart';

@Database(version: 1, entities: [Products])
abstract class MyFloorDatabase extends FloorDatabase{

  ProductsDao get productsDao;
}