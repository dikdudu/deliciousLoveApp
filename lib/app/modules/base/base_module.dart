import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliciousloveapp/app/modules/clients/clients_controller.dart';
import 'package:deliciousloveapp/app/modules/clients/clients_module.dart';
import 'package:deliciousloveapp/app/modules/clients/repositories/clients_repository.dart';
import 'package:deliciousloveapp/app/modules/clients/repositories/clients_repository_interface.dart';
import 'package:deliciousloveapp/app/modules/home/home_module.dart';
import 'package:deliciousloveapp/app/modules/login/login_controller.dart';
import 'package:deliciousloveapp/app/modules/login/login_module.dart';
import 'package:deliciousloveapp/app/modules/orders/orders_module.dart';
import 'package:deliciousloveapp/app/shared/controllers/navigation_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'base_page.dart';

class BaseModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => LoginController()),
    Bind((i) => NavigationController()),
    Bind((i) => ClientsController(i.get())),
    Bind<IClientsRepository>((i) => ClientsRepository(Firestore.instance)),

  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => BasePage()),
    Router('/login', module: LoginModule()),
    Router('/home', module: HomeModule()),
    Router('/orders', module:  OrdersModule()),
    Router('/clients', module:  ClientsModule()),
  ];

  static Inject get to => Inject<BaseModule>.of();

}