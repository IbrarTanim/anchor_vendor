import 'package:floor/floor.dart';

@entity
class Products {
  @PrimaryKey()
  int? product_id;

  String? productName;
  int? state;
  int? bundle;
  double? quantity;

  Products(
      {this.product_id,
      this.productName,
      this.state,
      this.bundle,
      this.quantity});
}
