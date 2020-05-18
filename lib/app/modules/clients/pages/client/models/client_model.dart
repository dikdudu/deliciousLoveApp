import 'package:cloud_firestore/cloud_firestore.dart';

class ClientModel {
  String name;
  String address;
  String phone;

  DocumentReference reference;

  ClientModel({this.name, this.address, this.phone, this.reference});

}