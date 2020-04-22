import 'package:deliciousloveapp/app/modules/base/base_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [

  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: BaseModule())
  ];

  @override
  Widget get bootstrap => AppWidget();

}