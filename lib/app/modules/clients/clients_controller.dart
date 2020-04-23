import 'package:deliciousloveapp/app/modules/clients/models/clients_model.dart';

import 'repositories/clients_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'clients_controller.g.dart';


class ClientsController = _ClientsController with _$ClientsController;

abstract class _ClientsController with Store {
  final IClientsRepository repository;

  @observable
  ObservableStream<List<ClientsModel>> clientsList;

  _ClientsController(IClientsRepository this.repository){
    getList();
  }

  @action
  getList(){
    clientsList = repository.getClients().asObservable();
  }











  //Controladores do search talvez nem use
  @observable
  String _searchController = "";



  @action
  void setSearch(String search){
    _searchController = search;
  }

  @computed
  String get outSearch => _searchController;














}

