import 'package:deliciousloveapp/app/shared/widgets/custom_background/build_back.dart';
import 'package:flutter/material.dart';
import 'header/custom_header.dart';
import 'icons/icon_section.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Stack(
        children: <Widget>[
          BuildBodyBack(),
          ListView(
            padding: EdgeInsets.only(left: 25.0, top: 16.0),
            children: <Widget>[
              CustomHeader(),
              Divider(),
              IconSection(),
            ],
          ),
        ],
      ),
    );
  }
}
