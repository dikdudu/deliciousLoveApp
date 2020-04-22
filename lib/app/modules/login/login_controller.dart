import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store{

  @observable
  String email = "";


  @action
  void  setEmail(String value) => email = value;

  @observable
  String password = "";

  @action
  void setPassword(String value) => password = value;

  @observable
  bool passwordVisible = true;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @computed
  bool get isEmailValid => email.length > 6;

  @computed
  bool get isPasswordValid => password.length > 6;

  @computed
  bool get isVisiblePass => password.length >= 1;

  @computed
  Function get loginPressed =>
      (isEmailValid && isPasswordValid && !loading) ? login : null;

  @action
  Future<void> login () async{
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    loading = false;

    loggedIn = true;

  }

}