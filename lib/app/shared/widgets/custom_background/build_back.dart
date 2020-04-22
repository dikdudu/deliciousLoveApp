import 'package:flutter/material.dart';

class BuildBodyBack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 246, 134, 189),
              Color.fromARGB(100, 254, 201, 241),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
    );
  }
}
