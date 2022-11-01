import 'package:flutter/material.dart';
import 'package:bml_calculator/constant.dart';
import 'package:bml_calculator/Container.dart';

import 'input_page.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              card: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'mm',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'ifsdfs',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ), onPressed: () {},
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:( context)=>InputPage()));
            },
            child: Container(
              child:Center(child: Text('RE_Calculate',style: kNumberStyle,)),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}
