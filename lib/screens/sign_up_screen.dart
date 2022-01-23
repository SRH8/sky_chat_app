import 'package:flutter/material.dart';
import 'package:sky_chat_app/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30,),              
                Container(child: buildImage('assets/images/introimg1.png',)),
                SizedBox(height: 10,),
                Text(
                  'Crea una cuenta en Sky',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold
                  ),        
                ),
                SizedBox(height: 10,),
                SignUpFields(),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String path) => Center(child: Image.asset(path,width: 350,height: 250,fit: BoxFit.cover,));
}