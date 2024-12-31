import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapp/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products/category/:category_name'));

    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productdList = [];
    for (int i = 0; i < data.length; i++) {
      productdList.add(ProductModel.fromjson(data[i]));
    }
    return productdList;
  }
}
