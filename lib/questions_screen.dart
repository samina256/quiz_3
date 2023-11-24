import 'package:adv_basic/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen>createState(){
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen>{
  
  var currentQuestionIndex = 0;

  void answerQuestion(){
 
   setState(() {
     currentQuestionIndex++;
   });
  }

  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                 color: Color.fromARGB(255, 186, 194, 235),
                 fontSize: 25,
                 fontWeight:FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswer().map((answer) {
               return AnswerButton(answerText: answer, onTap:answerQuestion);
            },)
            
          ],
        ),
      ),
    );
  }
}