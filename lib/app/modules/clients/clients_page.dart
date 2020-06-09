import 'package:deliciousloveapp/app/modules/clients/widgets/add_client_button.dart';
import 'package:deliciousloveapp/app/modules/clients/widgets/search_area.dart';
import 'package:deliciousloveapp/app/modules/clients/widgets/clients_tile.dart';
import 'package:deliciousloveapp/app/modules/drawer/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClientsPage extends StatefulWidget {
  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 134, 189),
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 246, 134, 189),
        title: Text("Clientes Novos"),
        centerTitle: true,
      ),
      floatingActionButton: AddClientButton(),
      body: Column(
        children: <Widget>[
          SearchArea(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: ClientTile(),
            ),
          ),
        ],
      ),
    );
  }
}

