import 'package:flutter/material.dart';

import 'GridViewdb.dart';

class Jwellery extends StatefulWidget {
  const Jwellery({super.key});

  @override
  State<Jwellery> createState() => _JwelleryState();
}

class _JwelleryState extends State<Jwellery> {
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
