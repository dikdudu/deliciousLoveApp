import 'package:flutter/material.dart';

class ClientTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0,right: 23, left: 23, bottom: 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            "Carlos Eduardo",
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
            "subtitle",
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
        ),
      ),
    );
  }
}
