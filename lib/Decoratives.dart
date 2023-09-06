import 'package:flutter/material.dart';

class decoratives extends StatefulWidget {
  const decoratives({super.key});

  @override
  State<decoratives> createState() => _decorativesState();
}

class _decorativesState extends State<decoratives> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Decoratives"),
      ),
    );
  }
}
