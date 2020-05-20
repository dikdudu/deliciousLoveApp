import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliciousloveapp/app/modules/clients/pages/client/client_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:deliciousloveapp/app/modules/clients/pages/client/client_page.dart';

import 'repositories/client_repository.dart';
import 'repositories/client_repository_interface.dart';

class ClientModule extends ChildModule {
  @override
  List<Bind> get binds =>
      [
        Bind((i) => ClientController(i.get())),
        Bind<IClientRepository>((i) => ClientRepository(Firestore.instance)),
      ];

  @override
  List<Router> get routers =>
      [
        Router(Modular.initialRoute, child: (_, args) =>
            ClientPage(
                clientModel: args.data,
            )),
      ];

  static Inject get to => Inject<ClientModule>.of();
}
