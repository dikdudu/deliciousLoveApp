import 'package:deliciousloveapp/app/modules/clients/models/clients_model.dart';

abstract class IClientsRepository{

  Stream<List<ClientsModel>> getClients();

}