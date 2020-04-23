import 'package:deliciousloveapp/app/modules/orders/pages/add_order_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/oders_page.dart';


class OrdersModule extends ChildModule{
  @override
  List<Bind> get binds => [

  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => OrdersPage()),
    Router('/addorder', child: (_, args) => AddOrderPage()),
  ];

  static Inject get to => Inject.of();

}