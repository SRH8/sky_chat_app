
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sky_chat_app/preferences/user_preferences.dart';


class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: '¡Bienvenido a Sky!',
            body: 'Una solución moderna y elegante de mensajería.',
            image: buildImage('assets/images/introimg1.png'),
            decoration: getPageDecoration(),                
          ),
           PageViewModel(
            title: 'Mensajería simple y confiable',
            body: 'Envía mensajes a tus amigos y familiares sin restricciones.',
            image: buildImage('assets/images/introimg2.png'),
            decoration: getPageDecoration()      
          ),
           PageViewModel(
            title: 'Comparte momentos importantes',
            body: 'Captura los momentos que más te importan y envía fotos de manera instantánea.',
            image: buildImage('assets/images/introimg3.png'),
            decoration: getPageDecoration(),
            footer: getTextButton(context)
          
          ),
        ],
        showSkipButton: true,
        skip: const Text('Omitir', style: TextStyle(color: Colors.black),),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward, color: Colors.black,),
        done: const Text('Empezar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        onDone: (){
          Navigator.of(context).pushReplacementNamed('login');
          UserPreferences.setSkipOnboarding(true);
        },
        dotsDecorator: getDotDecorator(),
      ),
    );
  }

  Widget buildImage(String path) => Center(child: Image.asset(path, width: 350,));

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.indigo),
    bodyTextStyle: const TextStyle(fontSize: 20),
    descriptionPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: const EdgeInsets.all(24),
    pageColor: Colors.grey[50]
  );
  
  DotsDecorator getDotDecorator() => DotsDecorator(
    activeColor: Colors.indigo,
    size: const Size(10,10),
    activeSize: const Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
    )
  );

  Widget getTextButton(context) => ElevatedButton(
    onPressed: (){
      Navigator.of(context).pushReplacementNamed('login');
      UserPreferences.setSkipOnboarding(true);
    },
    child: const Text('Empezar',style: TextStyle(fontSize: 20, color: Colors.white),),
    style: ElevatedButton.styleFrom(
      primary: Colors.indigo,
      elevation: 8,
      padding: const EdgeInsets.symmetric(horizontal: 15) 
      )
     );

}