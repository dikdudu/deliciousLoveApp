import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliciousloveapp/app/modules/base/base_module.dart';
import 'package:deliciousloveapp/app/modules/clients/clients_module.dart';
import 'package:deliciousloveapp/app/modules/home/home_module.dart';
import 'package:deliciousloveapp/app/modules/login/login_module.dart';
import 'package:deliciousloveapp/app/modules/orders/orders_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'modules/clients/clients_controller.dart';
import 'modules/clients/repositories/clients_repository.dart';
import 'modules/clients/repositories/clients_repository_interface.dart';
import 'modules/login/login_controller.dart';
import 'shared/controllers/navigation_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => LoginController()),
    Bind((i) => NavigationController()),
    Bind((i) => ClientsController(i.get())),
    Bind<IClientsRepository>((i) => ClientsRepository(Firestore.instance)),

  ];

  @override
  List<Router> get routers => [
    Router('/', module: BaseModule()),
    Router('/login', module: LoginModule()),
    Router('/home', module: HomeModule()),
    Router('/orders', module:  OrdersModule()),
    Router('/clients', module:  ClientsModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject.of();

}