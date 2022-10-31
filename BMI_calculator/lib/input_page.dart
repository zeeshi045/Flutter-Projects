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
  int slider=180;
  int sliderw=60;
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
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Text('HEIGHT',
        style: kstyle,),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(slider.toString(),style: kstyle,),
          Text('cm',style: kstyle,),
        ],
      ),
      Slider(value: slider.toDouble(),
          min: 122,
          max:220,
          activeColor: Color(0xFFeb1555),
          inactiveColor: Color(0xFF8d8e98),
          onChanged:(double newValue){
        setState(() {
          slider=newValue.round();
        });
          },
      ),
    ],
    ),
          ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child:RepeatContainerCode(
                onPressed: (){},
                colors:Color(0xFF1D1E33),

                card:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT',style: kstyle,),
                    Text(sliderw.toString(),
                    style:kstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                      ],
                    ),
                  ],
                )
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

