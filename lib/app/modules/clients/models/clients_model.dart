import 'package:cloud_firestore/cloud_firestore.dart';

class ClientsModel {
  String name;
  String phone;
  String address;

  DocumentReference reference;

  ClientsModel({this.name, this.phone, this.address,this.reference});


  factory ClientsModel.fromDocument(DocumentSnapshot doc){

    return ClientsModel(name: doc['nome'], phone: doc['phone'], address: doc['address'], reference: doc.reference);

  }


}