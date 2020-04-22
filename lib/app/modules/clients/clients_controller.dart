import 'package:mobx/mobx.dart';

part 'clients_controller.g.dart';


class ClientsController = _ClientsController with _$ClientsController;

abstract class _ClientsController with Store {

  @observable
  String _searchController = "";

  @action
  void setSearch(String search){
    _searchController = search;
  }

  @computed
  String get outSearch => _searchController;



}

