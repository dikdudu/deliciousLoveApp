import 'package:flutter/material.dart';

class AddClientButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Color.fromARGB(255, 246,134,189),
      onPressed: (){
        Navigator.pushNamed(context, '/clients/client');
      },
    );
  }
}