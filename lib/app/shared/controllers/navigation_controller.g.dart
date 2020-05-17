// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigationController on _NavigationController, Store {
  Computed<int> _$outPageComputed;

  @override
  int get outPage => (_$outPageComputed ??= Computed<int>(() => super.outPage,
          name: '_NavigationController.outPage'))
      .value;

  final _$textAtom = Atom(name: '_NavigationController.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$_pageControllerAtom =
      Atom(name: '_NavigationController._pageController');

  @override
  int get _pageController {
    _$_pageControllerAtom.reportRead();
    return super._pageController;
  }

  @override
  set _pageController(int value) {
    _$_pageControllerAtom.reportWrite(value, super._pageController, () {
      super._pageController = value;
    });
  }

  final _$_pageAtom = Atom(name: '_NavigationController._page');

  @override
  int get _page {
    _$_pageAtom.reportRead();
    return super._page;
  }

  @override
  set _page(int value) {
    _$_pageAtom.reportWrite(value, super._page, () {
      super._page = value;
    });
  }

  final _$_NavigationControllerActionController =
      ActionController(name: '_NavigationController');

  @override
  void setPage(int page) {
    final _$actionInfo = _$_NavigationControllerActionController.startAction(
        name: '_NavigationController.setPage');
    try {
      return super.setPage(page);
    } finally {
      _$_NavigationControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
text: ${text},
outPage: ${outPage}
    ''';
  }
}
