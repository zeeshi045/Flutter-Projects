import 'package:bml_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bml_calculator/Container.dart';
import 'package:bml_calculator/textandIcon.dart';
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectgen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI_calculator'),
      ),
      body:Column(
        children:[
        Expanded(child: Row(
          children: [
            Expanded(
          child:RepeatContainerCode(
            onPressed: (){
              setState(() {
                selectgen=Gender.male;
              });
            },
            colors:selectgen==Gender.male?activeColor:deactiveColor,
            card: RepeatTextandIcon(
              icon: FontAwesomeIcons.person,
              label: 'MALE',
            ),
          ),
    ),
            Expanded(child:RepeatContainerCode(
              onPressed: (){
                setState(() {
                  selectgen=Gender.female;
                });
              },
              colors:selectgen==Gender.female?activeColor:deactiveColor,
              card: RepeatTextandIcon(
                icon: FontAwesomeIcons.personDress,
                label: 'FEMALE',
              ),
            ),
            ),
          ],
        ),
        ),
          Expanded(child:RepeatContainerCode(
            onPressed: (){
            },
            colors:Color(0xFF1D1E33),
            card: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text('HEIGHT',
      style: kstyle,),
    ],
    ),
          ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child:RepeatContainerCode(
                onPressed: (){
                  setState(() {
                    selectgen=Gender.male;
                  });
                },
                colors:Colors.amber,
                card: RepeatTextandIcon(
                  icon: FontAwesomeIcons.person,
                  label: 'Male',
                ),
              ),),
              Expanded(child:RepeatContainerCode(
                onPressed: (){
                  setState(() {
                    selectgen=Gender.male;
                  });
                },
                colors:Colors.cyan,
                card: RepeatTextandIcon(
                  icon: FontAwesomeIcons.person,
                  label: 'Male',
                ),
              ),),
            ],
          ),

          ),
        ],
      ),

    );
  }
}

