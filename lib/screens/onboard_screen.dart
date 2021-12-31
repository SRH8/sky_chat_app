
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Título',
            body: 'Cuerpo y descripción',
            image: buildImage('assets/images/introimg1.png'),
            decoration: getPageDecoration(),                
          ),
           PageViewModel(
            title: 'Título 2',
            body: 'Cuerpo y descripción',
            image: buildImage('assets/images/introimg2.png'),
            decoration: getPageDecoration()      
          ),
           PageViewModel(
            title: 'Título 3',
            body: 'Cuerpo y descripción',
            image: buildImage('assets/images/introimg3.png'),
            decoration: getPageDecoration()      
          ),
        ],
        showSkipButton: true,
        skip: const Text('Skip', style: TextStyle(color: Colors.black),),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward, color: Colors.black,),
        done: const Text('Start', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        onDone: (){
          Navigator.of(context).pushReplacementNamed('login');
        },
        dotsDecorator: getDotDecorator(),
      ),
    );
  }

  Widget buildImage(String path) => Center(child: Image.asset(path, width: 350,));

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
    bodyTextStyle: const TextStyle(fontSize: 20),
    descriptionPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: const EdgeInsets.all(24),
    pageColor: Colors.grey[50]
  );
  
  DotsDecorator getDotDecorator() => const DotsDecorator(
    activeColor: Colors.indigo
  );

}