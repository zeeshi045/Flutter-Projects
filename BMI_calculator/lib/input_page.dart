import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          child:RepeatContainerCode(colors:Colors.cyan,
            card: RepeatTextandIcon(
              icon: FontAwesomeIcons.person,
              label: 'Male',
            ),
          ),
    ),
            Expanded(child:RepeatContainerCode(
              colors:Colors.red,
              card: RepeatTextandIcon(
                icon: FontAwesomeIcons.person,
                label: 'Female',
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

class RepeatTextandIcon extends StatelessWidget {
  RepeatTextandIcon({required this.label,required this.icon});
      final String label;
      final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children:[
Icon(
    icon,
         size:80,
),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
        ),
        ],
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  final Color colors;
  final Widget card;
  const RepeatContainerCode(
  {super.key,
    required this.colors, required this.card
});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child:card,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),

    );
  }
}