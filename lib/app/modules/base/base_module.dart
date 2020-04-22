import 'package:deliciousloveapp/app/modules/clients/client/add_client_screen.dart';
import 'package:deliciousloveapp/app/modules/clients/clients_controller.dart';
import 'package:deliciousloveapp/app/modules/login/login_controller.dart';
import 'package:deliciousloveapp/app/modules/login/login_screen.dart';
import 'package:deliciousloveapp/app/modules/orders/order/add_order_screen.dart';
import 'package:deliciousloveapp/app/shared/controllers/navigation_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'base_screen.dart';

class BaseModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => ClientsController()),
    Bind((i) => LoginController()),
    Bind((i) => NavigationController()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => BaseScreen()),
    Router('/login', child: (_, args) => LoginScreen()),
    Router('/clients/addclient', child: (_, args) => AddClientScreen()),
    Router('/orders/addorder', child: (_, args) => AddOrderScreen())

  ];

}