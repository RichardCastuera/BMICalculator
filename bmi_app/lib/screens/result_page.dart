import 'package:flutter/material.dart';
import '../components/reusablecard_content.dart';
import '../components/bottom_content.dart';
import '../components/constant.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: kLargeTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              color: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'OVERWEIGHT',
                    style: kResultStyle,
                  ),
                  Text(
                    '26.7',
                    style: kLargeNumberTextStyle,
                  ),
                  Text(
                    'Comments',
                    style: kCommentStyle,
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          buildGestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            label: 'Re-Calculate',
          ),
        ],
      ),
    );
  }
}
