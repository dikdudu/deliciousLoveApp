import 'package:deliciousloveapp/app/modules/clients/clients_controller.dart';
import 'package:deliciousloveapp/app/shared/widgets/custom_text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AddClientPage extends StatefulWidget {
  @override
  _AddClientPageState createState() => _AddClientPageState();
}

class _AddClientPageState extends ModularState<AddClientPage, ClientsController> {
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();

  ClientsController _clientsController;

  _submitForm() {
    final name = _nameController.text;
    final address = _addressController.text;
    final phone = _phoneController.text;

    if (name.isEmpty || address.isEmpty || phone.isEmpty) {
      return;
    }

    _clientsController.addClient(name, address, phone);

  }

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
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _submitForm,
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
                      CustomTextField(
                        hint: 'Nome Completo',
                        prefix: const Icon(Icons.person),
                        textInputType: TextInputType.multiline,
                        enabled: true,
                        controller: _nameController,
                      ),
                      CustomTextField(
                        hint: 'Endereço',
                        prefix: const Icon(Icons.home),
                        textInputType: TextInputType.text,
                        maxLines: 2,
                        enabled: true,
                        controller: _addressController,

                      ),
                      CustomTextField(
                        hint: 'Telefone',
                        prefix: const Icon(Icons.phone_android),
                        textInputType: TextInputType.phone,
                        enabled: true,
                        controller: _phoneController,
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
