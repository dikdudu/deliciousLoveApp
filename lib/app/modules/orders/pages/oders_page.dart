import 'package:deliciousloveapp/app/modules/drawer/custom_drawer.dart';
import 'package:deliciousloveapp/app/modules/orders/widgets/add_order_button.dart';
import 'package:deliciousloveapp/app/modules/orders/widgets/category_selector.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class OrdersScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246,134,189),
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 246,134,189),
        title: Text("Todos os Pedidos"),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
            icon: Icon(Icons.filter_list),
            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      floatingActionButton: AddOrderButton(),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0),
                  topRight: Radius.circular(45.0)
                ),
              ),
            ),
          ),
        ],
      ),
    );


  }

  void choiceAction (String choice){
    print('WORKING');
  }

}
