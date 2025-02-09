import 'package:flutter/material.dart';
import 'package:storeapp/screens/home_screen.dart';
import 'package:storeapp/screens/update_product_screen.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id : (context)=>const HomeScreen(),
        ProductScreen.id:(context)=>ProductScreen()
      },
      initialRoute: HomeScreen.id,
    );
  }
}
