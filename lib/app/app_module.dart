import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliciousloveapp/app/app_controller.dart';
import 'package:deliciousloveapp/app/shared/controllers/navigation_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'modules/clients/clients_controller.dart';
import 'modules/clients/clients_module.dart';
import 'modules/clients/repositories/clients_repository.dart';
import 'modules/clients/repositories/clients_repository_interface.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_controller.dart';
import 'modules/login/login_module.dart';
import 'modules/orders/orders_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => LoginController()),
    Bind((i) => NavigationController()),
    Bind((i) => ClientsController(i.get())),
    Bind<IClientsRepository>((i) => ClientsRepository(Firestore.instance)),


  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: HomeModule()),
    Router('/login', module: LoginModule()),
    Router('/home', module: HomeModule()),
    Router('/orders', module:  OrdersModule()),
    Router('/clients', module:  ClientsModule()),

  ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject.of();

}