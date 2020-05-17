import 'package:deliciousloveapp/app/modules/clients/clients_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/client/client_module.dart';


class ClientsModule extends ChildModule {
  @override
  List<Bind> get binds => [
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => ClientsPage()),
    Router('/client', module: ClientModule()),

  ];

  static Inject get to => Inject<ClientsModule>.of();
}