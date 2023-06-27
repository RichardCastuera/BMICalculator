import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard_content.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF121E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    containerColor,
                    iconData(FontAwesomeIcons.mars, 'Male'),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    containerColor,
                    iconData(FontAwesomeIcons.venus, 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              containerColor,
              Column(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    containerColor,
                    Column(),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    containerColor,
                    Column(),
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
