import 'package:deliciousloveapp/app/shared/widgets/custom_icon_buttom/custom_icon_button.dart';
import 'package:deliciousloveapp/app/shared/widgets/custom_text_field/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246,134,189),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 246,134,189),
        centerTitle: true,
        title: Text("Novo Usuário"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(32),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CustomTextField(
                      hint: 'Nome Completo',
                      prefix: Icon(Icons.account_circle),
                      textInputType: TextInputType.text,
                      onChanged: (nome){

                      },
                      enabled: true,
                    ),
                    const SizedBox(height: 16,),
                    CustomTextField(
                      hint: 'Email',
                      prefix: Icon(Icons.email),
                      obscure: true,
                      onChanged: (email){

                      },
                      enabled: true,
                    ),
                    const SizedBox(height: 16,),
                    CustomTextField(
                      hint: 'Senha',
                      prefix: Icon(Icons.lock),
                      obscure: true,
                      onChanged: (pass){

                      },
                      enabled: true,
                      suffix: CustomIconButton(
                        radius: 32,
                        iconData: Icons.visibility,
                        onTap: (){

                        },
                      ),
                    ),
                    const SizedBox(height: 16,),
                    SizedBox(
                      height: 44,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Text('Cadastrar Usuário', style: TextStyle(fontSize: 16),),
                        color:  Color.fromARGB(255, 246,134,189),
                        disabledColor: Theme.of(context).primaryColor.withAlpha(100),
                        textColor: Colors.white,
                        onPressed: (){

                        },
                      ),
                    )
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
