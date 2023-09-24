import 'package:flutter/material.dart';

import 'GridViewdb.dart';

class others extends StatefulWidget {
  const others({super.key});

  @override
  State<others> createState() => _othersState();
}

class _othersState extends State<others> {
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
