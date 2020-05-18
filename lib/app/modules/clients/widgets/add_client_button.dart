import 'package:deliciousloveapp/app/modules/clients/pages/client/models/client_model.dart';
import 'package:flutter/material.dart';

class AddClientButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Color.fromARGB(255, 246,134,189),
      onPressed: (){
        Navigator.pushNamed(context, '/clients/client', arguments: ClientModel(
          name: "",
          address: "",
          phone: "",
        ));
      },
    );
  }
}