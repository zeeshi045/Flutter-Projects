import 'package:bml_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bml_calculator/Container.dart';
import 'package:bml_calculator/textandIcon.dart';
import 'package:bml_calculator/result.dart';
import 'package:bml_calculator/calculatorfile.dart';
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
  int age=16;
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
          Text(slider.toString(),style:kNumberStyle,),
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
                    style:kNumberStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
roundicon(icondata: FontAwesomeIcons.plus,
onPressed: (){
  setState(() {
    sliderw++;
  });
},),
                        SizedBox(width: 10.0,),
                        roundicon(icondata: FontAwesomeIcons.minus,
    onPressed: () {
      setState(() {
        sliderw--;
      });
    })
                      ],
                    ),
                  ],
                )
              ),),
              Expanded(child:RepeatContainerCode(
                onPressed: (){},
                  colors:Color(0xFF1D1E33),
                  card:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',style: kstyle,),
                      Text(age.toString(),
                        style:kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          roundicon(icondata: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },),
                          SizedBox(width: 10.0,),
                          roundicon(icondata: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              })
                        ],
                      ),
                    ],
                  )
              ),),
            ],
          ),

          ),
          GestureDetector(
            onTap: (){
              Calculator_Brain obj =Calculator_Brain(height: slider,weight:sliderw);

              Navigator.push(context,MaterialPageRoute(builder:( context)=>ResultScreen(
                bmiresult: obj.calculateBMI().toString(),
                resultText: obj.getResult(),
                interpretation: obj.getInterpretation(),
              )));
            },
            child: Container(
              child:Center(child: Text('Calculate',style: kNumberStyle,)),
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

class roundicon extends StatelessWidget {
  roundicon({
    required this.icondata, this.onPressed});
  final IconData icondata;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed:onPressed,
      child: Icon(icondata),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 45.0,
        width: 45.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),




    );
  }
}

