import 'package:deliciousloveapp/app/modules/clients/widgets/add_client_button.dart';
import 'package:deliciousloveapp/app/modules/clients/widgets/search_area.dart';
import 'package:deliciousloveapp/app/modules/clients/widgets/search_dialog.dart';
import 'package:deliciousloveapp/app/modules/clients/widgets/user_tile.dart';
import 'package:deliciousloveapp/app/modules/drawer/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'clients_controller.dart';

class ClientsScreen extends StatefulWidget {
  @override
  _ClientsScreenState createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  ClientsController _clientsStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final clientsStore = Modular.get<ClientsController>();

    if (clientsStore != _clientsStore) _clientsStore = clientsStore;
  }

  @override
  Widget build(BuildContext context) {
    _openSearch(String currentSearch) async {
      final String search = await showDialog(
        context: context,
        builder: (context) => SearchDialog(
          currentSearch: currentSearch,
        ),
      );
      if (search != null) _clientsStore.setSearch(search);
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 134, 189),
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 246, 134, 189),
        title: Observer(
          builder: (_) {
            if (_clientsStore.outSearch.isEmpty)
              return Text("Clientes");
            else
              return GestureDetector(
                onTap: () => _openSearch(_clientsStore.outSearch),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      child: Text(_clientsStore.outSearch),
                      width: constraints.biggest.width,
                    );
                  },
                ),
              );
          },
        ),
        centerTitle: true,
        actions: <Widget>[
          Observer(
            builder: (_) {
              if (_clientsStore.outSearch.isEmpty)
                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _openSearch("");
                  },
                );
              else
                return IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    _clientsStore.setSearch("");
                  },
                );
            },
          ),
        ],
      ),
      floatingActionButton: AddClientButton(),
      body: Column(
        children: <Widget>[
          SearchArea(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ClientTile();
                  },
                  separatorBuilder: (context, index){
                    return Container();
                  },
                  itemCount: 10
              ),
            ),
          ),
        ],
      ),
    );
  }
}
