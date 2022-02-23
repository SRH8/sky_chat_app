import 'package:flutter/material.dart';
import 'package:sky_chat_app/ui/text_field_input_decoration.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Form(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: 350,
        child: Column(
          children: [
            _FormFields(),
          ],
        ));
  }
}

class _FormFields extends StatefulWidget {
  const _FormFields({Key? key}) : super(key: key);

  @override
  State<_FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<_FormFields> {
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            TextFormField(
                autocorrect: false,
                enableSuggestions: false,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);

                  return !regExp.hasMatch(value ?? '')? 'Correo no válido': null;
                },
                onChanged: (value) {},
                decoration: TextFieldInputDecoration.loginInputDecoration(
                    hintText: '',
                    labelText: "Correo electrónico",
                    prefixIcon: Icons.email_rounded)),
            TextFormField(
                autocorrect: false,
                enableSuggestions: false,
                maxLength: 18,
                obscureText: true,
                obscuringCharacter: '*',
                keyboardType: TextInputType.text,
                validator: (value) {
                  String pattern = r'.{8,}'; 
                  RegExp regExp = new RegExp(pattern);

                  return !regExp.hasMatch(value ?? '')? 'La contraseña es demasiado corta': null;
                },
                onChanged: (value) {},
                decoration: TextFieldInputDecoration.loginInputDecoration(
                    hintText: 'Mínimo 8 caracteres',
                    labelText: "Contraseña",
                    prefixIcon: Icons.lock_clock_rounded)),
            ElevatedButton(
              child: Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  elevation: 4,
                  primary: Colors.indigo),
            ),
          ],
        ),
      ),
    );
  }
}
