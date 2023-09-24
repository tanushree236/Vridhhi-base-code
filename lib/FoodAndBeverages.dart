import 'package:flutter/material.dart';
import 'GridViewdb.dart';

class FoodAndBeverages extends StatefulWidget {
  const FoodAndBeverages({super.key});

  @override
  State<FoodAndBeverages> createState() => _FoodAndBeveragesState();
}

class _FoodAndBeveragesState extends State<FoodAndBeverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: const Padding(
            padding: EdgeInsets.all(24.0),
            child: GridB(),
          ),
        ),
      ),
    );
  }
}
