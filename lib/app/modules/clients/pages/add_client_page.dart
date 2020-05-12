
import 'package:deliciousloveapp/app/modules/clients/clients_controller.dart';
import 'package:deliciousloveapp/app/shared/animation/fade_animation.dart';
import 'package:deliciousloveapp/app/shared/widgets/custom_text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AddClientPage extends StatefulWidget {
  @override
  _AddClientPageState createState() => _AddClientPageState();
}

class _AddClientPageState
    extends ModularState<AddClientPage, ClientsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 134, 189),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 246, 134, 189),
        title: Text("Cadastrar Cliente"),
        centerTitle: true,
        actions: <Widget>[
          Observer(
            builder: (_) {
              return IconButton(
                icon: Icon(Icons.save),
                onPressed: controller.savePressed,
              );
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0),
                  topRight: Radius.circular(45.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Observer(
                        builder: (_) {
                          return controller.loading
                              ? CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.pink[300]),
                                )
                              : Container();
                        },
                      ),
                      Observer(
                        builder: (_){
                          return CustomTextField(
                            hint: 'Nome Completo',
                            prefix: const Icon(Icons.person),
                            textInputType: TextInputType.multiline,
                            enabled: !controller.loading,
                            onChanged: controller.setNameClient,
                          );
                        },
                      ),
                      Observer(
                        builder: (_){
                          return  CustomTextField(
                            hint: 'Endereço',
                            prefix: const Icon(Icons.home),
                            textInputType: TextInputType.text,
                            enabled: !controller.loading,
                            onChanged: controller.setAddressClient,
                          );
                        },
                      ),
                     Observer(
                       builder: (_){
                         return FadeAnimation(0,Container(
                           margin: EdgeInsets.only(top: 8),
                           padding: EdgeInsets.all(4),
                           decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(50),
                               boxShadow: [
                                 BoxShadow(
                                     color: Color.fromRGBO(255, 105, 180, .2),
                                     blurRadius: 10.0,
                                     offset: Offset(0, 2)
                                 )
                               ]
                           ),
                           child: TextFormField(
                             decoration: InputDecoration(
                               hintStyle: TextStyle(color: Colors.grey[400]),
                               border: InputBorder.none,
                               hintText: 'Telefone',
                               labelStyle: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: Colors.grey,
                                 fontSize: 16,
                               ),
                               prefixIcon: const Icon(Icons.phone_android),
                             ),
                             keyboardType: const TextInputType.numberWithOptions(
                               decimal: true,
                               signed: false,
                             ),
                             inputFormatters: [
                               WhitelistingTextInputFormatter.digitsOnly,
                             ],
                             enabled: !controller.loading,
                             onChanged: controller.setPhoneClient,
                           ),
                         ));
                       } ,
                     ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
