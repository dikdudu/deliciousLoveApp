import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'client_controller.dart';
import 'models/client_model.dart';

class ClientPage extends StatefulWidget {
  final String title;
  final ClientModel clientModel;

  const ClientPage({Key key, this.title = "Novo Client", this.clientModel})
      : super(key: key);

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends ModularState<ClientPage, ClientController> {
  //use 'controller' variable to access controller

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    InputDecoration _buildDecoration(String label) {
      return InputDecoration(
          labelText: label, labelStyle: TextStyle(color: Colors.grey));
    }

    final _fieldStyle = TextStyle(fontSize: 16);

    controller.setNameClient(widget.clientModel.name);
    controller.setAddressClient(widget.clientModel.address);
    controller.setPhoneClient(widget.clientModel.phone);
    controller.setReference(widget.clientModel.reference);

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color.fromARGB(255, 246, 134, 189),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 246, 134, 189),
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {},
          ),
          Observer(
            builder: (_) {
              return IconButton(
                icon: Icon(Icons.save),
                onPressed: saveClient,
              );
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Form(
                child: ListView(
                  padding: EdgeInsets.all(16),
                  children: <Widget>[
                    Observer(
                      builder: (_) {
                        return TextFormField(
                          initialValue: widget.clientModel.name,
                          style: _fieldStyle,
                          decoration: _buildDecoration("Nome"),
                          enabled: !controller.loading,
                          onChanged: controller.setNameClient,
                        );
                      },
                    ),
                    Observer(
                      builder: (_) {
                        return TextFormField(
                          initialValue: widget.clientModel.address,
                          style: _fieldStyle,
                          maxLines: 2,
                          decoration: _buildDecoration("Endereço"),
                          enabled: !controller.loading,
                          onChanged: controller.setAddressClient,
                        );
                      },
                    ),
                    Observer(
                      builder: (_) {
                        return TextFormField(
                          initialValue: widget.clientModel.phone,
                          style: _fieldStyle,
                          decoration: _buildDecoration("Telefone"),
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          enabled: !controller.loading,
                          onChanged: controller.setPhoneClient,
                        );
                      },
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

  void saveClient()async{

    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content:
            Text("Salvando Cliente...", style: TextStyle(color: Colors.white)),
        duration: Duration(minutes: 1),
        backgroundColor: Colors.pinkAccent,
      ),
    );

    bool success = await controller.savePressed();

    _scaffoldKey.currentState.removeCurrentSnackBar();

    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content:
        Text(success ? "Cliente Salvo" : "Erro ao Salvar o Cliente", style: TextStyle(color: Colors.white)),
        duration: Duration(minutes: 1),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
