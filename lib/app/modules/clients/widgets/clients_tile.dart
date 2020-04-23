import 'package:deliciousloveapp/app/modules/clients/clients_controller.dart';
import 'package:deliciousloveapp/app/modules/clients/models/clients_model.dart';
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
      padding: EdgeInsets.only(top: 0,right: 23, left: 23, bottom: 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Observer(
          builder: (_){

            if(controller.clientsList.hasError){
              return Center(
                child: RaisedButton(
                  onPressed: controller.getList(),
                  child: Text('ERROORR dasujhduashd'),
                ),
              );
            }

            if(controller.clientsList.data == null){
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            List<ClientsModel> list = controller.clientsList.data;
            return ListView.builder(
              itemCount: list.length,
                itemBuilder: (_, index){
                ClientsModel model = list[index];
              return ListTile(
                title: Text(
                  model.name,
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                    model.phone,
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Pedidos: 0",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "Gastos: 0",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );

            });
          },
        ),
      ),
    );
  }
}
