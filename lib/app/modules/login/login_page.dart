import 'package:deliciousloveapp/app/modules/home/home_page.dart';
import 'package:deliciousloveapp/app/shared/animation/fade_animation.dart';
import 'package:deliciousloveapp/app/shared/widgets/custom_icon_buttom/custom_icon_button.dart';
import 'package:deliciousloveapp/app/shared/widgets/custom_text_field/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController loginStore = LoginController();

  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    disposer = reaction(
            (_) => loginStore.loggedIn,
            (loggedIn){
          if(loggedIn)
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_)=>HomePage())
            );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background2.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.power_settings_new),
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      Positioned(
                        child: Container(
                          child: FadeAnimation(2.5,Center(
                            child: Container(
                              padding: EdgeInsets.all(90),
                              child: Image(image: AssetImage('assets/images/logo.png')),
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    children: <Widget>[
                      Observer(
                        builder: (_){
                          return CustomTextField(
                            hint: 'E-mail',
                            prefix: Icon(Icons.account_circle),
                            textInputType: TextInputType.emailAddress,
                            onChanged: loginStore.setEmail,
                            enabled: !loginStore.loading,
                          );
                        },
                      ),
                      SizedBox(height: 4),
                      Observer(
                        builder: (_){
                          return CustomTextField(
                            hint: 'Senha',
                            prefix: Icon(Icons.lock),
                            obscure: loginStore.passwordVisible,
                            onChanged: loginStore.setPassword,
                            enabled: !loginStore.loading,
                            suffix: CustomIconButton(
                              radius: 32,
                              iconData: loginStore.passwordVisible ? Icons.visibility : Icons.visibility_off,
                              onTap: loginStore.togglePasswordVisibility,
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 16),
                      Observer(
                          builder: (_) {
                            return FadeAnimation(3.5,Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(255, 105, 180, .6),
                                      Color.fromRGBO(255, 105, 180, .2),
                                    ]
                                ),
                              ),
                              child: FlatButton(
                                padding: EdgeInsets.only(left: 50,right: 50),
                                child: loginStore.loading ? CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.white),) :
                                Text("Entrar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                onPressed: loginStore.loginPressed,
                              ),
                            ));
                          }
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            child: Text(
                              "Criar novo usuário",
                              style: TextStyle(color: Color.fromRGBO(255, 105, 180, .6)),
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, '/signup');
                            },
                          ),
                          Text("/", textAlign: TextAlign.center,),
                          FlatButton(
                            child: Text(
                              "Esqueceu a senha?",
                              style: TextStyle(color: Color.fromRGBO(255, 105, 180, .6)),
                            ),
                            onPressed: (){

                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
