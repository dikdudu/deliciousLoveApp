import 'package:deliciousloveapp/app/modules/clients/pages/client/client_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:deliciousloveapp/app/modules/clients/pages/client/client_page.dart';

class ClientModule extends ChildModule {
  @override
  List<Bind> get binds =>
      [
        Bind((i) => ClientController()),
      ];

  @override
  List<Router> get routers =>
      [
        Router("/:nomeClient", child: (_, args) =>
            ClientPage(
                clientModel: args.data,
            )),
      ];

  static Inject get to => Inject<ClientModule>.of();
}
