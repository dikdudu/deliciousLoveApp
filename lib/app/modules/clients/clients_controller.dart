import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliciousloveapp/app/modules/clients/models/clients_model.dart';
import 'package:flutter/cupertino.dart';

import 'repositories/clients_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'clients_controller.g.dart';


class ClientsController = _ClientsController with _$ClientsController;

abstract class _ClientsController with Store {
  final IClientsRepository repository;

  DocumentReference reference;

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

  @action
  addClient() async{
    if(reference == null){
      reference = await Firestore.instance.collection('clients').add({
        'nome': nameClient,
        'phone': phoneClient,
        'address': addressClient,
      });
    }else {
      reference.updateData({
        'nome': nameClient,
        'phone': phoneClient,
        'address': addressClient,
      });
    }


  }

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

