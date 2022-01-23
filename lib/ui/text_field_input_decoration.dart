
import 'package:flutter/material.dart';

class TextFieldInputDecoration {

  static InputDecoration loginInputDecoration(
  {
    required String hintText,
    required String labelText,
    IconData? prefixIcon
  }
  ){

    return InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              width: 3,
              color: Colors.amber
          )
      ),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.amber
          )
      ),
      hintText: hintText,
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.grey),
      prefixIcon: prefixIcon!=null ? Icon(prefixIcon, color: Colors.indigo,) : null,
    );
  }
}