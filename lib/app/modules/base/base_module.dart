import 'package:deliciousloveapp/app/modules/clients/pages/add_client_page.dart';
import 'package:deliciousloveapp/app/modules/clients/clients_controller.dart';
import 'package:deliciousloveapp/app/modules/login/login_controller.dart';
import 'package:deliciousloveapp/app/modules/login/login_page.dart';
import 'package:deliciousloveapp/app/modules/orders/pages/add_order_page.dart';
import 'package:deliciousloveapp/app/shared/controllers/navigation_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'base_page.dart';

class BaseModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => ClientsController()),
    Bind((i) => LoginController()),
    Bind((i) => NavigationController()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => BasePage()),
    Router('/login', child: (_, args) => LoginPage()),
    Router('/clients/addclient', child: (_, args) => AddClientPage()),
    Router('/orders/addorder', child: (_, args) => AddOrderPage())

  ];

}