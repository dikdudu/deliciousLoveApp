import 'package:cloud_firestore/cloud_firestore.dart';

import 'client_repository_interface.dart';

class ClientRepository implements IClientRepository{

  final Firestore firestore;

  ClientRepository(this.firestore);

  DocumentReference reference;

  @override
  saveClient({String name, String address, String phone}) async{
    if(reference == null){
      reference = await Firestore.instance.collection('clients').add({
        'nome': name,
        'phone': phone,
        'address': address,
      });
    }else {
      reference.updateData({
        'nome': name,
        'phone': phone,
        'address': address,
      });
    }
  }


}