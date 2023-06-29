import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard_content.dart';
import 'icon_content.dart';

const bottomContainerHeight = 60.0;
const containerColor = Color(0xFF121E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    selectedGender == GenderType.male
                        ? containerColor
                        : inactiveCardColor,
                    iconData(FontAwesomeIcons.mars, 'Male'),
                    () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    selectedGender == GenderType.female
                        ? containerColor
                        : inactiveCardColor,
                    iconData(FontAwesomeIcons.venus, 'Female'),
                    () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              containerColor,
              Column(),
              () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    containerColor,
                    Column(),
                    () {},
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    containerColor,
                    Column(),
                    () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
