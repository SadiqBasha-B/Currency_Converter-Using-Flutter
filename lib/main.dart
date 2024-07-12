// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:sample/currency_converter.dart';


void main()
{
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currency_converter(),
    );
  }
}