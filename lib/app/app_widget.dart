import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Delicious Love',
        theme: ThemeData(
            primaryColor: Colors.pinkAccent
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
      );

  }
}
