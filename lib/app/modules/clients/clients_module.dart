import 'package:deliciousloveapp/app/modules/clients/pages/add_client_page.dart';
import 'package:deliciousloveapp/app/modules/clients/pages/client/client_page.dart';
import 'package:deliciousloveapp/app/modules/clients/clients_page.dart';
import 'package:flutter_modular/flutter_modular.dart';


class ClientsModule extends ChildModule {
  @override
  List<Bind> get binds => [
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => ClientsPage()),
    Router('/addclient', child: (_, args) => AddClientPage()),
    Router('/client', child: (_, args) => ClientPage()),
  ];

  static Inject get to => Inject<ClientsModule>.of();
}