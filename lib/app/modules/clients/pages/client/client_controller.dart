import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

import 'repositories/client_repository_interface.dart';

part 'client_controller.g.dart';

class ClientController = _ClientControllerBase with _$ClientController;

abstract class _ClientControllerBase with Store {

  final IClientRepository repository;

  _ClientControllerBase(IClientRepository this.repository);


  @observable
  String nameClient = "";

  @observable
  String addressClient = "";

  @observable
  String phoneClient = "";

  @observable
  bool loading = false;

  @observable
  DocumentReference _reference;

  @action
  void setNameClient(String value){
    nameClient = value;
  }

  @action
  void setAddressClient(String value) {
    addressClient = value;
  }

  @action
  void setPhoneClient(String value) {
    phoneClient = value;
  }

  @action
  void setReference(DocumentReference reference){
    _reference = reference;
  }

  String validateName(){
    if(nameClient == null || nameClient.isEmpty){
      return "Preencha o Nome do Cliente";
    }
    return null;
  }

  String validateAddress(){
    if(addressClient == null || addressClient.isEmpty){
      return "Preencha o campo de Endereço";
    }
    return null;
  }

  String validatePhone() {
    String pattern = r'(^(?:[+0]9)?[0-9]{9,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (phoneClient.length == 0) {
      return 'Cliente nao pode ser cadastro sem telefone';
    }
    else if (!regExp.hasMatch(phoneClient)) {
      return 'Por favor insira um telefone valido';
    }
    return null;
  }

  @computed
  bool get isNameValid => nameClient.isNotEmpty && nameClient.length > 3;


  @computed
  bool get isAddressValid => addressClient.isNotEmpty && addressClient.length > 4;

  @computed
  bool get isPhoneValid => phoneClient.isNotEmpty && phoneClient.length >= 9;

  @computed
  Function get savePressed{
    if(isNameValid && isAddressValid && isPhoneValid && !loading) {
      return addClient;
    }else{
      return null;
    }
  }


  @action
  Future<bool> addClient() async {
    loading = true;

    await repository.saveClient(
      name: nameClient,
      phone: phoneClient,
      address: addressClient,
      reference: _reference,
    );

    loading = false;

    return true;

  }

}
