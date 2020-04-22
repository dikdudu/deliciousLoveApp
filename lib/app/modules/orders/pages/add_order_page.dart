import 'package:flutter/material.dart';

class AddOrderScreen extends StatefulWidget {
  @override
  _AddOrderScreenState createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246,134,189),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 246,134,189),
        title: Text("Novo Pedido"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: (){

            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 80,
            color: Color.fromARGB(255, 246,134,189),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 0,
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: (){
                    setState(() {

                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
                    child: Text(
                      "dsadas",
                      style: TextStyle(
                          color:  Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
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
}
