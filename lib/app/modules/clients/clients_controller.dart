import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliciousloveapp/app/modules/clients/models/clients_model.dart';

import 'repositories/clients_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'clients_controller.g.dart';

class ClientsController = _ClientsController with _$ClientsController;

abstract class _ClientsController with Store {
  final IClientsRepository repository;

  ClientsModel addClientModel;

  DocumentReference reference;

  @observable
  String nameClient = "";

  @observable
  String addressClient = "";

  @observable
  String phoneClient = "";

  @observable
  bool loading = false;

  @action
  void setNameClient(String value) => nameClient = value;

  @action
  void setAddressClient(String value) => addressClient = value;

  @action
  void setPhoneClient(String value) => phoneClient = value;

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

    await repository.setClient(
      name: nameClient,
      phone: phoneClient,
      address: addressClient,
    );

    loading = false;

  }




  //Buscar dados clients

  @observable
  ObservableStream<List<ClientsModel>> clientsList;

  _ClientsController(IClientsRepository this.repository) {
    getList();
  }

  @action
  getList() {
    clientsList = repository.getClients().asObservable();
  }
}
