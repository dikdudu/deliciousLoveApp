import 'package:flutter_modular/flutter_modular.dart';

import 'base_page.dart';

class BaseModule extends ChildModule{
  @override
  List<Bind> get binds => [

  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => BasePage()),
  ];

  static Inject get to => Inject.of();

}