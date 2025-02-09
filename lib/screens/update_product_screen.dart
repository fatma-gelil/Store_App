import 'package:flutter/material.dart';
import 'package:storeapp/widgets/custom_button.dart';
import 'package:storeapp/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  static String id = 'productPage';
  String? productName, description, image;
  int? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                onChanged: (data) {
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  image = data;
                },
                hintText: 'Product Image',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  description = data;
                },
                hintText: 'Product Description',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  price = int.parse(data);
                },
                inputType: TextInputType.number,
                hintText: 'Product Price',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButon(text: 'Update Product')
            ],
          ),
        ),
      ),
    );
  }
}
