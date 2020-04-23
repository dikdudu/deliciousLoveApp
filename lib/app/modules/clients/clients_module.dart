import 'package:deliciousloveapp/app/modules/clients/pages/add_client_page.dart';
import 'package:deliciousloveapp/app/modules/clients/pages/clients_page.dart';
import 'package:flutter_modular/flutter_modular.dart';


class ClientsModule extends ChildModule {
  @override
  List<Bind> get binds => [
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => ClientsPage()),
    Router('/addclient', child: (_, args) => AddClientPage()),
  ];

  static Inject get to => Inject<ClientsModule>.of();
}