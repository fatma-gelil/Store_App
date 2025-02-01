import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class GetAllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromjson(data[i]),
      );
    }
    return productsList;
  }
}
