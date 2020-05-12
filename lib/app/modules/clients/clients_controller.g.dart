// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientsController on _ClientsController, Store {
  Computed<bool> _$isNameValidComputed;

  @override
  bool get isNameValid =>
      (_$isNameValidComputed ??= Computed<bool>(() => super.isNameValid)).value;
  Computed<bool> _$isAddressValidComputed;

  @override
  bool get isAddressValid =>
      (_$isAddressValidComputed ??= Computed<bool>(() => super.isAddressValid))
          .value;
  Computed<bool> _$isPhoneValidComputed;

  @override
  bool get isPhoneValid =>
      (_$isPhoneValidComputed ??= Computed<bool>(() => super.isPhoneValid))
          .value;
  Computed<Function> _$savePressedComputed;

  @override
  Function get savePressed =>
      (_$savePressedComputed ??= Computed<Function>(() => super.savePressed))
          .value;

  final _$nameClientAtom = Atom(name: '_ClientsController.nameClient');

  @override
  String get nameClient {
    _$nameClientAtom.context.enforceReadPolicy(_$nameClientAtom);
    _$nameClientAtom.reportObserved();
    return super.nameClient;
  }

  @override
  set nameClient(String value) {
    _$nameClientAtom.context.conditionallyRunInAction(() {
      super.nameClient = value;
      _$nameClientAtom.reportChanged();
    }, _$nameClientAtom, name: '${_$nameClientAtom.name}_set');
  }

  final _$addressClientAtom = Atom(name: '_ClientsController.addressClient');

  @override
  String get addressClient {
    _$addressClientAtom.context.enforceReadPolicy(_$addressClientAtom);
    _$addressClientAtom.reportObserved();
    return super.addressClient;
  }

  @override
  set addressClient(String value) {
    _$addressClientAtom.context.conditionallyRunInAction(() {
      super.addressClient = value;
      _$addressClientAtom.reportChanged();
    }, _$addressClientAtom, name: '${_$addressClientAtom.name}_set');
  }

  final _$phoneClientAtom = Atom(name: '_ClientsController.phoneClient');

  @override
  String get phoneClient {
    _$phoneClientAtom.context.enforceReadPolicy(_$phoneClientAtom);
    _$phoneClientAtom.reportObserved();
    return super.phoneClient;
  }

  @override
  set phoneClient(String value) {
    _$phoneClientAtom.context.conditionallyRunInAction(() {
      super.phoneClient = value;
      _$phoneClientAtom.reportChanged();
    }, _$phoneClientAtom, name: '${_$phoneClientAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_ClientsController.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

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

  final _$addClientAsyncAction = AsyncAction('addClient');

  @override
  Future<void> addClient() {
    return _$addClientAsyncAction.run(() => super.addClient());
  }

  final _$_ClientsControllerActionController =
      ActionController(name: '_ClientsController');

  @override
  void setNameClient(String value) {
    final _$actionInfo = _$_ClientsControllerActionController.startAction();
    try {
      return super.setNameClient(value);
    } finally {
      _$_ClientsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddressClient(String value) {
    final _$actionInfo = _$_ClientsControllerActionController.startAction();
    try {
      return super.setAddressClient(value);
    } finally {
      _$_ClientsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhoneClient(String value) {
    final _$actionInfo = _$_ClientsControllerActionController.startAction();
    try {
      return super.setPhoneClient(value);
    } finally {
      _$_ClientsControllerActionController.endAction(_$actionInfo);
    }
  }

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
    final string =
        'nameClient: ${nameClient.toString()},addressClient: ${addressClient.toString()},phoneClient: ${phoneClient.toString()},loading: ${loading.toString()},clientsList: ${clientsList.toString()},isNameValid: ${isNameValid.toString()},isAddressValid: ${isAddressValid.toString()},isPhoneValid: ${isPhoneValid.toString()},savePressed: ${savePressed.toString()}';
    return '{$string}';
  }
}
