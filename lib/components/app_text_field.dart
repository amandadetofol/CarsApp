import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class AppTextField extends StatelessWidget {
  
    bool shouldHideCharachters;
    String label;
    String hint;
    TextEditingController tController;
    FormFieldValidator<String> validator;
    TextInputType textInputType;
    TextInputAction action;

    AppTextField(
      {super.key, 
        required this.shouldHideCharachters, 
        required this.label, 
        required this.hint, 
        required this.tController, 
        required this.validator, 
        required this.textInputType, 
        required this.action
      }
    );

    @override 
    Widget build(BuildContext context) {
      return TextFormField(
        textInputAction: action,
        keyboardAppearance: Brightness.light,
        keyboardType: textInputType,
        controller: tController,
        validator: validator,
        obscureText: shouldHideCharachters,
        style: const TextStyle(
          fontSize: 16,
        ),
        decoration:  InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
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
}