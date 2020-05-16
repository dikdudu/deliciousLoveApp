import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'client_controller.dart';

class ClientPage extends StatefulWidget {
  final String title;
  const ClientPage({Key key, this.title = "Client"}) : super(key: key);

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends ModularState<ClientPage, ClientController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
