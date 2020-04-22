// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigationController on _NavigationController, Store {
  Computed<int> _$outPageComputed;

  @override
  int get outPage =>
      (_$outPageComputed ??= Computed<int>(() => super.outPage)).value;

  final _$textAtom = Atom(name: '_NavigationController.text');

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

  final _$_pageControllerAtom =
      Atom(name: '_NavigationController._pageController');

  @override
  int get _pageController {
    _$_pageControllerAtom.context.enforceReadPolicy(_$_pageControllerAtom);
    _$_pageControllerAtom.reportObserved();
    return super._pageController;
  }

  @override
  set _pageController(int value) {
    _$_pageControllerAtom.context.conditionallyRunInAction(() {
      super._pageController = value;
      _$_pageControllerAtom.reportChanged();
    }, _$_pageControllerAtom, name: '${_$_pageControllerAtom.name}_set');
  }

  final _$_pageAtom = Atom(name: '_NavigationController._page');

  @override
  int get _page {
    _$_pageAtom.context.enforceReadPolicy(_$_pageAtom);
    _$_pageAtom.reportObserved();
    return super._page;
  }

  @override
  set _page(int value) {
    _$_pageAtom.context.conditionallyRunInAction(() {
      super._page = value;
      _$_pageAtom.reportChanged();
    }, _$_pageAtom, name: '${_$_pageAtom.name}_set');
  }

  final _$_NavigationControllerActionController =
      ActionController(name: '_NavigationController');

  @override
  void setPage(int page) {
    final _$actionInfo = _$_NavigationControllerActionController.startAction();
    try {
      return super.setPage(page);
    } finally {
      _$_NavigationControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'text: ${text.toString()},outPage: ${outPage.toString()}';
    return '{$string}';
  }
}
