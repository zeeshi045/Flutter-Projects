import 'package:flutter/material.dart';
//TODO: Step 2 - Import the rFlutter_Alert package here.
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question.dart';
QuizBrain quizBrain = QuizBrain();
String  ? getQuestion ;
String   q1='null';
bool b1 =false;
String  q2='null';
bool b2 =false;
String  q3='null';
bool b3 =false;
String  q4='null';
bool b4 =false;
String  q5='null';
bool b5 =false;
void main() => runApp(Quizzler());
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),

            child: first(),
          ),
        ),
      ),
    );
  }
}
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}
class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "Question 1"),
            onChanged:(String text){
              print("Text $text");
              q1= text;
            },
            onSubmitted:(String text) {
              print("Text $text");
              q1= text;
            },
          ),
          SizedBox(height: 13,),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "ans"),
            onChanged:(String text){
              print("Text $text");
              if(text=="true"){
                b1=true;
              }
              else{
                b1=false;
              }
              b1= text as bool;
            },
            onSubmitted:(String text) {
              print("Text $text");
            },
          ),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "Question 2"),
            onChanged:(String text){
              print("Text $text");
              q2= text;
            },
            onSubmitted:(String text) {
              print("Text $text");
              q2= text;
            },
          ),
          SizedBox(height: 13,),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "ans"),
            onChanged:(String text){
              print("Text $text");
              if(text=="true"){
                b2=true;
              }
              else{
                b2=false;
              }
              b2= text as bool;
            },
            onSubmitted:(String text) {
              print("Text $text");
            },
          ),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "Question 3"),
            onChanged:(String text){
              print("Text $text");
              q3= text;
            },
            onSubmitted:(String text) {
              print("Text $text");
              q3= text;
            },
          ),
          SizedBox(height: 13,),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "ans"),
            onChanged:(String text){
              print("Text $text");
              if(text=="true"){
                b3=true;
              }
              else{
                b3=false;
              }
              b3= text as bool;
            },
            onSubmitted:(String text) {
              print("Text $text");
            },
          ),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "Question 4"),
            onChanged:(String text){
              print("Text $text");
              q4= text;
            },
            onSubmitted:(String text) {
              print("Text $text");
              q4= text;
            },
          ),
          SizedBox(height: 13,),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "ans"),
            onChanged:(String text){
              print("Text $text");
              if(text=="true"){
                b4=true;
              }
              else{
                b4=false;
              }
              b4= text as bool;
            },
            onSubmitted:(String text) {
              print("Text $text");
            },
          ),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "Question 5"),
            onChanged:(String text){
              print("Text $text");
              q5= text;
            },
            onSubmitted:(String text) {
              print("Text $text");
              q5= text;
            },
          ),
          SizedBox(height: 13,),
          new TextField(
            decoration: new InputDecoration.collapsed(hintText: "ans"),
            onChanged:(String text){
              print("Text $text");
              if(text=="true"){
                b5=true;
              }
              else{
                b5=false;
              }
              b1= text as bool;
            },
            onSubmitted:(String text) {
              print("Text $text");
            },
          ),
          TextButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  QuizPage()),
            );
          }, child: Text('Submit'))
        ],
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool? correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If so,
      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
      if (quizBrain.isFinished() == true) {
        //TODO Step 4 Part A - show an alert using rFlutter_alert,

        //This is the code for the basic alert from the docs for rFlutter Alert:
        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        //Modified for our purposes:
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        //TODO Step 4 Part C - reset the questionNumber,
        quizBrain.reset();

        //TODO Step 4 Part D - empty out the scoreKeeper.
        scoreKeeper = [];
      }

      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
      else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        Expanded(
          flex: 7,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                //quizBrain.getQuestionText(),
                //getQuestion!,
                getQuestion.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.orangeAccent,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                getQuestion = quizBrain.getQuestionText();
                //The user picked true.
                checkAnswer(true);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                getQuestion = quizBrain.getQuestionText();
                //The user picked false.
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
class QuizBrain {
  int _questionNumber =0;
  List<Question>  _questionBank = [
    Question(q1,b1),
    Question(q2,b2),
    Question(q3,b3),
    Question(q4,b4),
    Question(q5,b5),
    //Question('You can lead a cow down stairs but not up stairs.', false),
    // Question('Approximately one quarter of human bones are in the feet.', true),
    // Question('A slug\'s blood is green.', true),
    // Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    // Question('It is illegal to pee in the Ocean in Portugal.', true),
    // Question(
    //     'No piece of square dry paper can be folded in half more than 7 times.',
    //     false),
    // Question(
    //     'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
    //     true),
    // Question(
    //     'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    //     false),
    // Question(
    //     'The total surface area of two human lungs is approximately 70 square metres.',
    //     true),
    // Question('Google was originally called \"Backrub\".', true),
    // Question(
    //     'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    //     true),
    // Question(
    //     'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
    //     true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      // print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
