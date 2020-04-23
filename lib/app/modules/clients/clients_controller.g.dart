// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientsController on _ClientsController, Store {
  final _$clientsListAtom = Atom(name: '_ClientsController.clientsList');

  @override
  ObservableStream<List<ClientsModel>> get clientsList {
    _$clientsListAtom.context.enforceReadPolicy(_$clientsListAtom);
    _$clientsListAtom.reportObserved();
    return super.clientsList;
  }

  @override
  set clientsList(ObservableStream<List<ClientsModel>> value) {
    _$clientsListAtom.context.conditionallyRunInAction(() {
      super.clientsList = value;
      _$clientsListAtom.reportChanged();
    }, _$clientsListAtom, name: '${_$clientsListAtom.name}_set');
  }

  final _$_ClientsControllerActionController =
      ActionController(name: '_ClientsController');

  @override
  dynamic getList() {
    final _$actionInfo = _$_ClientsControllerActionController.startAction();
    try {
      return super.getList();
    } finally {
      _$_ClientsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'clientsList: ${clientsList.toString()}';
    return '{$string}';
  }
}
