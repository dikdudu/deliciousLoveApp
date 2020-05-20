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

  @action setReference(DocumentReference reference){
    _reference = reference;
  }

  @computed
  bool get isNameValid => nameClient.isNotEmpty && nameClient.length > 3;

  @computed
  bool get isAddressValid => addressClient.isNotEmpty && addressClient.length > 4;

  @computed
  bool get isPhoneValid => phoneClient.isNotEmpty && phoneClient.length >= 9;

  @computed
  Function get savePressed =>
      (isNameValid && isAddressValid && isPhoneValid && !loading) ? addClient : null;

  @action
  Future<void> addClient() async {
    loading = true;

    await repository.saveClient(
      name: nameClient,
      phone: phoneClient,
      address: addressClient,
      reference: _reference,
    );

    loading = false;

  }

}
