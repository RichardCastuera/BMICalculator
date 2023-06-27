import 'package:flutter/material.dart';

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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: reusableCard(
                      Color(0xFF121E33),
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      Color(0xFF121E33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: reusableCard(
                Color(0xFF121E33),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: reusableCard(
                      Color(0xFF121E33),
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      Color(0xFF121E33),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Container reusableCard(Color color) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
