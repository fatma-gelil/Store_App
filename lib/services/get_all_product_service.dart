import 'dart:convert';

import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProducts {
  Future<List<ProductModel> > getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productdList = [];
    for (int i = 0; i < data.length; i++) {
      productdList.add(ProductModel.fromjson(data[i]));
    }
    return productdList;
  }
}
