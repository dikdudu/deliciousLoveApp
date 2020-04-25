import 'package:deliciousloveapp/app/modules/clients/clients_controller.dart';
import 'package:deliciousloveapp/app/shared/widgets/custom_text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AddClientPage extends StatefulWidget {
  @override
  _AddClientPageState createState() => _AddClientPageState();
}

class _AddClientPageState extends ModularState<AddClientPage, ClientsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 134, 189),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 246, 134, 189),
        title: Text("Cadastrar Cliente"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 80,
            color: Color.fromARGB(255, 246, 134, 189),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0)),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    CustomTextField(
                      hint: 'Nome Completo',
                      prefix: Icon(Icons.person),
                      textInputType: TextInputType.multiline,
                      enabled: true,
                    ),
                    CustomTextField(
                      hint: 'Endereço',
                      prefix: Icon(Icons.home),
                      textInputType: TextInputType.text,
                      maxLines: 2,
                      enabled: true,
                    ),
                    CustomTextField(
                      hint: 'Telefone',
                      prefix: Icon(Icons.phone_android),
                      textInputType: TextInputType.phone,
                      enabled: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
