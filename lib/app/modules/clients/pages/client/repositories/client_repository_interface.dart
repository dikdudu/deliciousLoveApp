import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IClientRepository{

  saveClient({String name, String address, String phone, DocumentReference reference});

  deleteClient(DocumentReference reference);

}