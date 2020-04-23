// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientsController on _ClientsController, Store {
  Computed<String> _$outSearchComputed;

  @override
  String get outSearch =>
      (_$outSearchComputed ??= Computed<String>(() => super.outSearch)).value;

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

  final _$_searchControllerAtom =
      Atom(name: '_ClientsController._searchController');

  @override
  String get _searchController {
    _$_searchControllerAtom.context.enforceReadPolicy(_$_searchControllerAtom);
    _$_searchControllerAtom.reportObserved();
    return super._searchController;
  }

  @override
  set _searchController(String value) {
    _$_searchControllerAtom.context.conditionallyRunInAction(() {
      super._searchController = value;
      _$_searchControllerAtom.reportChanged();
    }, _$_searchControllerAtom, name: '${_$_searchControllerAtom.name}_set');
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
  void setSearch(String search) {
    final _$actionInfo = _$_ClientsControllerActionController.startAction();
    try {
      return super.setSearch(search);
    } finally {
      _$_ClientsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'clientsList: ${clientsList.toString()},outSearch: ${outSearch.toString()}';
    return '{$string}';
  }
}
