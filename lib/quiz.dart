import 'package:adv_basic/StartScreen.dart';
import 'package:adv_basic/questions_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz>createState(){
   return _QuizState();

  }
}

class _QuizState extends State<Quiz>{
  
  var activeState = 'start-screen';

  void switchScreen(){
    setState(() {
      activeState = 'question-screen';
    });
  }

  @override
  Widget build(context){
   Widget screenWidget = StartScreen(switchScreen);
   
   if(activeState =='question-screen'){
    screenWidget = const QuestionScreen();
   }
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(42, 50, 161, 1),
                Color.fromARGB(255, 87, 104, 179),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:screenWidget,
        ),
      ),
    );
  }
}
 
//using ternary expression outside of the widget to became more readeable
// @override
//   Widget build(context){
//    final screenWidget = activeState == 'start-screen' 
//                 ? StartScreen(switchScreen) 
//                 : const QuestionScreen();

//     return  MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromRGBO(42, 50, 161, 1),
//                 Color.fromARGB(255, 87, 104, 179),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: Center(
//             child:screenWidget,
//           ),
//         ),
//       ),
//     );
//   }
//using ternary expression

  // @override
  // Widget build(context){
  //   return  MaterialApp(
  //     home: Scaffold(
  //       body: Container(
  //         decoration: const BoxDecoration(
  //           gradient: LinearGradient(
  //             colors: [
  //               Color.fromRGBO(42, 50, 161, 1),
  //               Color.fromARGB(255, 87, 104, 179),
  //             ],
  //             begin: Alignment.topLeft,
  //             end: Alignment.bottomRight,
  //           ),
  //         ),
  //         child: Center(
  //           child: activeState == 'start-screen' 
  //               ? StartScreen(switchScreen) 
  //               : const QuestionScreen(),
  //         ),
  //       ),
  //     ),
  //   );
  // }

//init state foe render content conditionally
 // Widget ?activeState;
  // @override
  // void initState(){
  //   super.initState();
  //   activeState = StartScreen(switchScreen);
  // }

  // void switchScreen(){
  //   setState(() {
  //     activeState = const QuestionScreen();
  //   });
  // }

  // @override
  // Widget build(context){
  //   return  MaterialApp(
  //     home: Scaffold(
  //       body: Container(
  //         decoration: const BoxDecoration(
  //           gradient: LinearGradient(
  //             colors: [
  //               Color.fromRGBO(42, 50, 161, 1),
  //               Color.fromARGB(255, 87, 104, 179),
  //             ],
  //             begin: Alignment.topLeft,
  //             end: Alignment.bottomRight,
  //           ),
  //         ),
  //         child: Center(
  //           child: activeState,
  //         ),
  //       ),
  //     ),
  //   );