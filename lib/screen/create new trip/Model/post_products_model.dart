class PostProductModel {
  PostProductModel(
      {required this.vendor_id,
      required this.loading_port_id,
      required this.unloading_port_id,
      required this.products,
      this.date,
      this.time,
      required this.biwta_check});

  int vendor_id;
  int loading_port_id;
  int unloading_port_id;
  dynamic date;
  dynamic time;
  int biwta_check;
  List<Products> products;

  Map<String, dynamic> toJson() => {
    "vendor_id": vendor_id,
    "loading_port_id": loading_port_id,
    "unloading_port_id": unloading_port_id,
    "date": date,
    "time": time,
    "biwta_check": biwta_check,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Products {
  Products({
    required this.product_id,
    required this.state,
    required this.bundle,
    required this.quantity,
  });

  int product_id;
  num state;
  num bundle;
  num quantity;

  Map<String, dynamic> toJson() => {
        "product_id": product_id,
        "state": state,
        "bundle": bundle,
        "quantity": quantity,
      };
}
