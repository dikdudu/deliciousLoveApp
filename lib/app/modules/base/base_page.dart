import 'package:deliciousloveapp/app/modules/clients/pages/clients_page.dart';
import 'package:deliciousloveapp/app/modules/drawer/custom_drawer.dart';
import 'package:deliciousloveapp/app/modules/home/home_page.dart';
import 'package:deliciousloveapp/app/modules/orders/pages/oders_page.dart';
import 'package:deliciousloveapp/app/shared/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';


class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final PageController _pageController = PageController();

  final navigationController = Modular.get<NavigationController>();

  NavigationController _navigationController;


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if(navigationController != _navigationController){
      _navigationController = navigationController;

      reaction((_) => _navigationController.outPage,(outPage){
        if (outPage >= 0) _pageController.jumpToPage(outPage);
      });
    }
  }


//
//  @override
//  void dispose() {
//    disposer();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomePage(),
          OrdersPage(),
          ClientsPage(),
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}

