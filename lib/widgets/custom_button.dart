import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButon extends StatelessWidget {
   CustomButon({super.key,  this.onTap ,required this.text}) ;
VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(text,style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}