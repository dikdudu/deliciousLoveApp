import 'package:mobx/mobx.dart';

part 'navigation_controller.g.dart';

class NavigationController = _NavigationController with _$NavigationController;

abstract class _NavigationController with Store{

  @observable
  String text = "";

  @observable
  int _pageController = 0;

  @observable
  int _page = 0;

  @action
  void setPage(int page){
    if(page == _page)
      return;
    _page = page;
    _pageController = page;
  }

  @computed
  int get outPage => _pageController;

}