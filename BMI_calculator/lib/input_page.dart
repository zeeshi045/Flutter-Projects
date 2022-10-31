import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bml_calculator/Container.dart';
import 'package:bml_calculator/textandIcon.dart';

const activeColor=Color(0xFF1d1e33);
const deactiveColor=Color(0xFF111328);
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
          child:GestureDetector(
            onTap: (){
              setState(() {
                selectgen=Gender.male;
              });
              print('click');
            },
            child: RepeatContainerCode(
              colors:selectgen==Gender.male?activeColor:deactiveColor,
              card: RepeatTextandIcon(
                icon: FontAwesomeIcons.person,
                label: 'MALE',
              ),
            ),
          ),
    ),
            Expanded(child:GestureDetector(
              onTap: (){
                setState(() {
                 selectgen=Gender.female;
                });
              },
              child: RepeatContainerCode(
                colors:selectgen==Gender.female?activeColor:deactiveColor,
                card: RepeatTextandIcon(
                  icon: FontAwesomeIcons.personDress,
                  label: 'FEMALE',
                ),
              ),
            ),
            ),
          ],
        ),

        ),
          Expanded(child:RepeatContainerCode(
            colors:Colors.orangeAccent,
            card: RepeatTextandIcon(
              icon: FontAwesomeIcons.person,
              label: 'Male',
            ),
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child:RepeatContainerCode(
                colors:Colors.amber,
                card: RepeatTextandIcon(
                  icon: FontAwesomeIcons.person,
                  label: 'Male',
                ),
              ),),
              Expanded(child:RepeatContainerCode(
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

