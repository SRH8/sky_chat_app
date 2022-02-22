import 'package:flutter/material.dart';
import 'package:sky_chat_app/ui/text_field_input_decoration.dart';

class SignUpFields extends StatelessWidget {
  const SignUpFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Form(),
                 
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
  final _signUpFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _signUpFormKey,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              enableSuggestions: false,
              keyboardType: TextInputType.text,
              validator: (value){

              },
              onChanged: (value){

              },
              decoration: TextFieldInputDecoration.loginInputDecoration(
                hintText:'',
                labelText: "Nombre",
                prefixIcon: Icons.person
             )
            ),
            SizedBox(height: 15,),
            TextFormField(
              autocorrect: false,
              enableSuggestions: false,
              keyboardType: TextInputType.emailAddress,
              validator: (value){

              },
              onChanged: (value){

              },
              decoration: TextFieldInputDecoration.loginInputDecoration(
                hintText:'',
                labelText: "Correo electrónico",
                prefixIcon: Icons.email_rounded
             )
            ),
            SizedBox(height: 15,),
            TextFormField(
              autocorrect: false,
              enableSuggestions: false,
              maxLength: 18,
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.text,
              validator: (value){

              },
              onChanged: (value){

              },
              decoration: TextFieldInputDecoration.loginInputDecoration(
                hintText:'Mínimo 6 caracteres',
                labelText: "Contraseña",
                prefixIcon: Icons.lock_clock_rounded
             )
            ),
            TextFormField(
              autocorrect: false,
              enableSuggestions: false,
              maxLength: 18,
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.text,
              validator: (value){

              },
              onChanged: (value){

              },
              decoration: TextFieldInputDecoration.loginInputDecoration(
                hintText:'Mínimo 6 caracteres',
                labelText: "Repetir contraseña",
                prefixIcon: Icons.lock_clock_rounded
             )
            ),
            ElevatedButton(
              child: Text('Crear cuenta', style: TextStyle(fontSize: 16,),),
              onPressed: (){


            
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                elevation: 4,
              primary: Colors.indigo
               ),
            ),       
          ],
        ),
      ),
    );
  }
}
  
