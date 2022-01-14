
import 'package:flutter/material.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Form(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('¿No tienes una cuenta?'), 
            TextButton(
              onPressed: (){},
              child: Text('Crear cuenta', style: TextStyle(color: Colors.indigo),)
              )
          ],
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
            
            Text('sdddddddddd'),
          ],
        ));
  }
}