// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientController on _ClientControllerBase, Store {
  Computed<bool> _$isSavedComputed;

  @override
  bool get isSaved => (_$isSavedComputed ??= Computed<bool>(() => super.isSaved,
          name: '_ClientControllerBase.isSaved'))
      .value;
  Computed<Function> _$savePressedComputed;

  @override
  Function get savePressed =>
      (_$savePressedComputed ??= Computed<Function>(() => super.savePressed,
              name: '_ClientControllerBase.savePressed'))
          .value;

  final _$nameClientAtom = Atom(name: '_ClientControllerBase.nameClient');

  @override
  String get nameClient {
    _$nameClientAtom.reportRead();
    return super.nameClient;
  }

  @override
  set nameClient(String value) {
    _$nameClientAtom.reportWrite(value, super.nameClient, () {
      super.nameClient = value;
    });
  }

  final _$addressClientAtom = Atom(name: '_ClientControllerBase.addressClient');

  @override
  String get addressClient {
    _$addressClientAtom.reportRead();
    return super.addressClient;
  }

  @override
  set addressClient(String value) {
    _$addressClientAtom.reportWrite(value, super.addressClient, () {
      super.addressClient = value;
    });
  }

  final _$phoneClientAtom = Atom(name: '_ClientControllerBase.phoneClient');

  @override
  String get phoneClient {
    _$phoneClientAtom.reportRead();
    return super.phoneClient;
  }

  @override
  set phoneClient(String value) {
    _$phoneClientAtom.reportWrite(value, super.phoneClient, () {
      super.phoneClient = value;
    });
  }

  final _$loadingAtom = Atom(name: '_ClientControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$_referenceAtom = Atom(name: '_ClientControllerBase._reference');

  @override
  DocumentReference get _reference {
    _$_referenceAtom.reportRead();
    return super._reference;
  }

  @override
  set _reference(DocumentReference value) {
    _$_referenceAtom.reportWrite(value, super._reference, () {
      super._reference = value;
    });
  }

  final _$addClientAsyncAction = AsyncAction('_ClientControllerBase.addClient');

  @override
  Future<bool> addClient() {
    return _$addClientAsyncAction.run(() => super.addClient());
  }

  final _$_ClientControllerBaseActionController =
      ActionController(name: '_ClientControllerBase');

  @override
  void setNameClient(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.setNameClient');
    try {
      return super.setNameClient(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddressClient(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.setAddressClient');
    try {
      return super.setAddressClient(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhoneClient(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.setPhoneClient');
    try {
      return super.setPhoneClient(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setReference(DocumentReference reference) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.setReference');
    try {
      return super.setReference(reference);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nameClient: ${nameClient},
addressClient: ${addressClient},
phoneClient: ${phoneClient},
loading: ${loading},
isSaved: ${isSaved},
savePressed: ${savePressed}
    ''';
  }
}
