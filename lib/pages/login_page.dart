
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
            _textField(
              false, 
              "Login", 
              "Digite seu login",
              tLogin,
              (text) {
                  if(text == ""){
                    return "Campo obrigatório.";
                  } else {
                    return null;
                  }
                }
              ),
            _spacingBox(),
            _textField(
              true, 
              "Senha",
              "Digite sua senha",
              tSenha,
              (text) {
                  if(text == ""){
                    return "Campo obrigatório.";
                  }
                  return null;
                }
              ),
            _spacingBox(),
            _button(),
          ],
        )
      );
    }

    Widget _spacingBox(){
      return const SizedBox(height: 16);
    }

    Widget _textField(
      bool shouldHideCharachters, 
      String label, 
      String hint, 
      TextEditingController tController,
      FormFieldValidator<String> validator){
       return TextFormField(
        controller: tController,
        validator: validator,
        obscureText: shouldHideCharachters,
        style: const TextStyle(
          fontSize: 16,
        ),
        decoration:  InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey)
          ),
          labelStyle: const TextStyle(
            fontSize: 20,
            color: Colors.grey
          ),
          labelText: label,
          hintText: hint
        ),
      );
    }

    Widget _button(){
      return Container(
        height: 48,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey
          ),
          onPressed: (){
            _loginTap();
          },
          child: 
            WhiteBoldText(
              contentText: "Entrar",
            )
          ),
        );
    }


  //HANDLERS
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