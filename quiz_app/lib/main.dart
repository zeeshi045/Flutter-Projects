import 'package:flutter/material.dart';
//TODO: Step 2 - Import the rFlutter_Alert package here.
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
QuizBrain quizBrain = QuizBrain();
String ?getQuestion;
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
int c=0;
int c1=0;
void main() => runApp(firstPage());
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title:Text('Make Questions',),
        ),
        body: SafeArea(
            child: first(),
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
    return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.amber,
                  Colors.white,
                ],
              )
          ),
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children:[
                Text(
                  'Question no 1',style: TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 10,),
                new TextField(
                  decoration: InputDecoration(
                    hintText: "Question 1",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                  // decoration: new InputDecoration.collapsed(hintText: "Question 1"),
                  onChanged:(String text){
                    print("Text $text");
                    q1= text;
                  },
                  onSubmitted:(String text) {
                    print("Text $text");
                    q1= text;
                  },
                ),
                SizedBox(height: 20,),
                new TextField(
                  decoration: InputDecoration(
                    hintText: "Answer",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                  onChanged:(String text){
                    print("Text $text");
                    if(text=="true"){
                      b1=true;
                    }
                    else{
                      b1=false;
                    }
                  },
                  onSubmitted:(String text) {
                    print("Text $text");
                  },
                ),
                SizedBox(height: 10,),
                Text(
                  'Question no 2',style: TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 10,),
                new TextField(
                  decoration: InputDecoration(
                    hintText: "Question 2",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
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
                  decoration: InputDecoration(
                    hintText: "Answer",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                  onChanged:(String text){
                    print("Text $text");
                    if(text=="true"){
                      b2=true;
                    }
                    else{
                      b2=false;
                    }
                  },
                  onSubmitted:(String text) {
                    print("Text $text");
                  },
                ),
                SizedBox(height: 10,),
                Text(
                  'Question no 3',style: TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 10,),
                new TextField(
                  decoration: InputDecoration(
                    hintText: "Question 3",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
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
                  decoration: InputDecoration(
                    hintText: "Answer",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                  onChanged:(String text){
                    print("Text $text");
                    if(text=="true"){
                      b3=true;
                    }
                    else{
                      b3=false;
                    }
                  },
                  onSubmitted:(String text) {
                    print("Text $text");
                  },
                ),
                SizedBox(height: 10,),
                Text(
                  'Question no 4',style: TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 10,),
                new TextField(
                  decoration: InputDecoration(
                    hintText: "Question 4",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
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
                  decoration: InputDecoration(
                    hintText: "Answer",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                  onChanged:(String text){
                    print("Text $text");
                    if(text=="true"){
                      b4=true;
                    }
                    else{
                      b4=false;
                    }
                  },
                  onSubmitted:(String text) {
                    print("Text $text");
                  },
                ),
                SizedBox(height: 10,),
                Text(
                  'Question no 5',style: TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 10,),
                new TextField(
                  decoration: InputDecoration(
                    hintText: "Question 5",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
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
                  decoration: InputDecoration(
                    hintText: "Answer",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                  onChanged:(String text){
                    print("Text $text");
                    if(text=="true"){
                      b5=true;
                    }
                    else{
                      b5=false;
                    }
                  },
                  onSubmitted:(String text) {
                    print("Text $text");
                  },
                ),
                SizedBox(height: 15,),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  QuizPage()),
                  );

                }, child: Text('Submit',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      backgroundColor: Colors.blueAccent,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(horizontal: 35,vertical: 20)),
                ),

              ],
            ),
          ),
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
    setState(() {
      bool? correctAnswer = quizBrain.getCorrectAnswer();
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If so,
      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
      if (quizBrain.isFinished() == true) {
        //TODO Step 4 Part A - show an alert using rFlutter_alert,
        //This is the code for the basic alert from the docs for rFlutter Alert:
        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        //Modified for our purposes:
        // Alert(
        //   context: context,
        //   title: 'Finished! Correct ans $c \n worng ans is $c1',
        //   desc: 'You\'ve reached the end of the quiz.',
        //
        // ).show();
        AlertDialog alert = AlertDialog(
          title: Text("Correct Answser is :$c"),
          content: Text("Wrong Answer is :$c1."),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text('oky',),
            ),

          ],
        );
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
        c=0;
        c1=0;
        //TODO Step 4 Part C - reset the questionNumber,
        quizBrain.reset();
        //TODO Step 4 Part D - empty out the scoreKeeper.
        scoreKeeper = [];
      }

      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
      else {
        if (userPickedAnswer == correctAnswer) {
          c=c+1;
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          c1=c1+1;
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
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black,
                    Colors.amber,

                  ],
                )
            ),
        child: Column(
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
                      color: Colors.white,
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
        ),
      ),
    );
  }
}
class QuizBrain {
  int _questionNumber=0;
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
  ]..shuffle();
  void nextQuestion() {
    if (_questionNumber <_questionBank.length - 1) {
      _questionNumber= _questionNumber+1;
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
class firstPage extends StatelessWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            color: Colors.amber,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:80),
                  child:Image.asset(
                    'assets/quiz.gif',
                    height: 140,
                    width: 120,
                  ),
                ),
           Padding(
             padding: const EdgeInsets.only(top: 150),
             child: Center(
              child: TextButton(
                onPressed: () {
                  Get.to(Quizzler());
                },
                child: Icon(
                Icons.play_circle_fill_outlined,
                color: Colors.black87,
                 size: 100.0,
                ),

              ),
        ),
           ),
                Text('Play',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            ),
          ),
        ),
    );
  }
}

