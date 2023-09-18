import 'package:cars/components/app_button.dart';
import 'package:cars/components/app_text_field.dart';
import 'package:cars/components/white_bold_text.dart';
import 'package:flutter/material.dart';

final class LoginPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final tLogin = TextEditingController();
  final tSenha = TextEditingController();

  LoginPage({super.key});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _body(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 79, 116, 135),
          title: WhiteBoldText(contentText: "Bem-vindo!")
        ),
      );
    }

  //WIDGETS
    _body(){
      return Form(
        key: _formKey,
        child: 
          ListView(
          padding: EdgeInsets.all(16),
          children: [
            AppTextField(
              shouldHideCharachters: true,
               label: "E-mail", 
               hint: "Digite seu e-mail", 
               tController: tSenha, 
               validator: (text) {
                  if(text == ""){
                    return "Campo obrigatório.";
                  }
                  return null;
                },
               textInputType: TextInputType.emailAddress,
               action: TextInputAction.next),
            _spacingBox(),
            AppTextField(
              shouldHideCharachters: true,
               label: "Senha", 
               hint: "Digite sua senha", 
               tController: tSenha, 
               validator: (text) {
                  if(text == ""){
                    return "Campo obrigatório.";
                  }
                  return null;
                },
               textInputType: TextInputType.number,
               action: TextInputAction.next),
            _spacingBox(),
            AppButton(text: "Entar", onTap: (){
              _loginTap();
            }),
          ],
        )
      );
    }

    Widget _spacingBox(){
      return const SizedBox(height: 16);
    }

  _loginTap(){
    bool? isFormValid = _formKey.currentState?.validate();
    if (isFormValid != null){
      if (!isFormValid){
        //tratamento 
        return;
      }
    } else {
      return;
    }

    String login = tLogin.text;
    String password = tSenha.text;

    print("$login e $password");
  }

}