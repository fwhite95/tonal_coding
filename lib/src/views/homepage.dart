import 'package:flutter/material.dart';
import 'package:tonal_coding/src/widgets/bubble.dart';
import 'package:tonal_coding/src/widgets/form.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String label = "Upper Body";
  int weight = 45;
  String unit = "lbs";

  @override
  void initState() {
    super.initState();
  }

//Function to change text inside bubble widget
//Redraws widget 
  void changeText(String newLabel, int newWeight) {
    setState(() {
      if(newLabel.isNotEmpty){
        label = newLabel;
      }
        weight = newWeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            EditForm(changeText: changeText),
            Divider(height: 24,),
            BubbleWidget(
              label: label, 
              weight: weight, 
              unit: unit,
              ),
          ],
        ),
      ), 
    );
  }
}