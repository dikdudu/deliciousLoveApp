import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliciousloveapp/app/modules/clients/clients_controller.dart';
import 'package:deliciousloveapp/app/modules/clients/models/clients_model.dart';
import 'package:deliciousloveapp/app/modules/clients/pages/client/models/client_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClientTile extends StatefulWidget {
  @override
  _ClientTileState createState() => _ClientTileState();
}

class _ClientTileState extends ModularState<ClientTile, ClientsController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
      child: Observer(
        builder: (_) {
          if (controller.clientsList.hasError) {
            return Center(
              child: RaisedButton(
                onPressed: controller.getList(),
                child: Text('ERROORR dasujhduashd'),
              ),
            );
          }

          if (controller.clientsList.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          List<ClientsModel> list = controller.clientsList.data;

          return Container(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (_, index) {
                  ClientsModel model = list[index];
                  return Container(
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 254, 201, 241),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: ListTile(
                      onLongPress: () {
                        _showDialog(name: model.name, address: model.address, phone: model.phone, reference: model.reference);
                      },
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043250-avatar-child-girl-kid_113270.png"),
                      ),
                      title: Text(
                        model.name,
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        "Contato: ${model.phone}",
                        style: TextStyle(color: Colors.black),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Pedidos: 0",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Gastos: R\$ 0",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }

  _showDialog({String name, String address, String phone, DocumentReference reference}) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Center(
              child: Text('Opções'),
            ),
            content: Container(
              height: 150,
              child: Column(
                children: <Widget>[
                  FlatButton(
                    child: Text("Ligar"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("Editar"),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "clients/client/",
                        arguments: ClientModel(
                          name: name,
                          address: address,
                          phone: phone,
                          reference: reference,
                        ),
                      );
                    },
                  ),
                  FlatButton(
                    child: Text("Ver Historico de Pedidos"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        });
  }
}
