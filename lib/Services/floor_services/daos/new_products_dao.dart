

import 'package:anchor_vendor/Services/floor_services/models/new_products_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class ProductsDao{

  @insert
  Future<void> insertProduct(Products product);

  @Query('DELETE FROM Products')
  Future<void> deleteAllProducts();

  @Query('SELECT * FROM Products')
  Stream<List<Products>> getAllProducts();

  @Query('DELETE FROM Products WHERE id = :id')
  Stream<Products?> deleteProductBYID(int id);
}