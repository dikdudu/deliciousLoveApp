// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppController, Store {
  final _$textAtom = Atom(name: '_AppController.text');

  @override
  String get text {
    _$textAtom.context.enforceReadPolicy(_$textAtom);
    _$textAtom.reportObserved();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.context.conditionallyRunInAction(() {
      super.text = value;
      _$textAtom.reportChanged();
    }, _$textAtom, name: '${_$textAtom.name}_set');
  }

  final _$_AppControllerActionController =
      ActionController(name: '_AppController');

  @override
  void setText(String texts) {
    final _$actionInfo = _$_AppControllerActionController.startAction();
    try {
      return super.setText(texts);
    } finally {
      _$_AppControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'text: ${text.toString()}';
    return '{$string}';
  }
}
