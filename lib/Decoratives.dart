import 'package:flutter/material.dart';

import 'GridViewdb.dart';

class decoratives extends StatefulWidget {
  const decoratives({super.key});

  @override
  State<decoratives> createState() => _decorativesState();
}

class _decorativesState extends State<decoratives> {
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
