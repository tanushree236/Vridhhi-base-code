import 'package:flutter/material.dart';

class FoodAndBeverages extends StatefulWidget {
  const FoodAndBeverages({super.key});

  @override
  State<FoodAndBeverages> createState() => _FoodAndBeveragesState();
}

class _FoodAndBeveragesState extends State<FoodAndBeverages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Food And Beverages"),
      ),
    );
  }
}
