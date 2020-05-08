import 'package:deliciousloveapp/app/modules/clients/models/clients_model.dart';

import 'repositories/clients_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'clients_controller.g.dart';


class ClientsController = _ClientsController with _$ClientsController;

abstract class _ClientsController with Store {
  final IClientsRepository repository;

  @observable
  String nameClient = "";

  @observable
  String addressClient = "";

  @observable
  String phoneClient = "";

  @action
  void setNameClient(String value) => nameClient = value;

  @action
  void setAddressClient(String value) => addressClient = value;

  @action
  void setPhoneClient(String value) => phoneClient = value;

  @computed
  bool get isFormValid => nameClient.isNotEmpty && addressClient.isNotEmpty && phoneClient.isNotEmpty;




  //Buscar dados clients

  @observable
  ObservableStream<List<ClientsModel>> clientsList;

  _ClientsController(IClientsRepository this.repository){
    getList();
  }

  @action
  getList(){
    clientsList = repository.getClients().asObservable();
  }










}

