import 'package:flutter/material.dart';

class SearchArea extends StatefulWidget {
  @override
  _SearchAreaState createState() => _SearchAreaState();
}

class _SearchAreaState extends State<SearchArea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color.fromARGB(255, 246,134,189),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Pesquisar",
            hintStyle: TextStyle(color: Colors.white),
            icon: Icon(Icons.search, color: Colors.white,),
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
