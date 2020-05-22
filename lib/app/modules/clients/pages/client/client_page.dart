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

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    _textFormField(
        {String initialValue, String label, onChanged, String errorText()}) {
      return TextFormField(
        initialValue: initialValue,
        style: TextStyle(fontSize: 16),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey),
          errorText: errorText == null ? null : errorText(),
        ),
        enabled: !controller.loading,
        onChanged: onChanged,
      );
    }

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
            onPressed: deletedClient,
          ),
          Observer(
            builder: (_) {
              return IconButton(
                icon: Icon(Icons.save),
                onPressed: controller.isSaved ? saveClient : null,
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
                        return _textFormField(
                          initialValue: widget.clientModel.name,
                          label: "Nome",
                          onChanged: controller.setNameClient,
                          errorText: controller.validateName,
                        );
                      },
                    ),
                    Observer(
                      builder: (_) {
                        return _textFormField(
                          initialValue: widget.clientModel.address,
                          label: "Endereco",
                          onChanged: controller.setAddressClient,
                          errorText: controller.validateAddress,
                        );
                      },
                    ),
                    Observer(
                      builder: (_) {
                        return _textFormField(
                          initialValue: widget.clientModel.phone,
                          label: "Telefone",
                          onChanged: controller.setPhoneClient,
                          errorText: controller.validatePhone,
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

  void saveClient() async {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content:
            Text("Salvando Cliente...", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pinkAccent,
      ),
    );

    bool success = await controller.savePressed();

    _scaffoldKey.currentState.removeCurrentSnackBar();

    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(success ? "Cliente Salvo" : "Erro ao Salvar o Cliente",
            style: TextStyle(color: Colors.white)),
        backgroundColor: success ? Colors.greenAccent : Colors.redAccent,
      ),
    );

  }

  void deletedClient() async {

    if(widget.clientModel.reference == null) {
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content:
          Text("Cliente não pode ser deletado", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.pinkAccent,
        ),
      );

      return null;
    }

    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content:
        Text("Deletando Cliente...", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pinkAccent,
      ),
    );

    bool success = await controller.delete();

    _scaffoldKey.currentState.removeCurrentSnackBar();

    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(success ? "Cliente deletado" : "Erro ao Deletar o Cliente",
            style: TextStyle(color: Colors.white)),
        backgroundColor: success ? Colors.greenAccent : Colors.redAccent,
      ),
    );

  }



}
