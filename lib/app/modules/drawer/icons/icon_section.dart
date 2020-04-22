import 'package:deliciousloveapp/app/shared/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'icon_tile.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _navigationController = Modular.get<NavigationController>();

    void _setPage(int page){
      Navigator.of(context).pop();
      _navigationController.setPage(page);
    }

    return Observer(
      builder: (_){
        return Column(
          children: <Widget>[
            IconTile(
              label: "Inicio",
              iconData: Icons.home,
              onTap: () {
                _setPage(0);
              },
              highlighted: _navigationController.outPage == 0,
            ),
            IconTile(
              label: "Pedidos",
              iconData: Icons.list,
              onTap: () {
                _setPage(1);
              },
              highlighted: _navigationController.outPage == 1,
            ),
            IconTile(
              label: "Cliente",
              iconData: Icons.supervisor_account,
              onTap: () {
                _setPage(2);
              },
              highlighted: _navigationController.outPage == 2,
            ),
            IconTile(
              label: "Produtos",
              iconData: Icons.shopping_basket,
              onTap: () {
                _setPage(3);
              },
              highlighted: _navigationController.outPage == 3,
            ),
            IconTile(
              label: "Estoque",
              iconData: Icons.business_center,
              onTap: () {
                _setPage(4);
              },
              highlighted: _navigationController.outPage == 4,
            ),
            IconTile(
              label: "Financeiro",
              iconData: Icons.attach_money,
              onTap: () {
                _setPage(5);
              },
              highlighted: _navigationController.outPage == 5,
            ),
          ],
        );
      },
    );
  }
}
