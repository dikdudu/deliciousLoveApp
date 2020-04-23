import 'package:deliciousloveapp/app/modules/clients/clients_model.dart';

abstract class IClientsRepository{

  Stream<List<ClientsModel>> getClients();

}