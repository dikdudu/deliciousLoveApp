import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliciousloveapp/app/modules/clients/models/clients_model.dart';

import 'clients_repository_interface.dart';

class ClientsRepository implements IClientsRepository{

  final Firestore firestore;

  ClientsRepository(this.firestore);

  DocumentReference reference;


  @override
  Stream<List<ClientsModel>> getClients() {
    return firestore.collection('clients').snapshots().map((query){
      return query.documents.map((doc){
        return ClientsModel.fromDocument(doc);
      }).toList();
    });
  }


}