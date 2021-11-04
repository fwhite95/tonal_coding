import 'package:flutter/material.dart';

class EditForm extends StatefulWidget {
  
  EditForm({
    required this.changeText,
  });

  final void Function(String label, int weight) changeText;

  @override
  _EditFormState createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  final _labelController = TextEditingController();
  final _weightController = TextEditingController();
  

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: <Widget> [
            TextFormField(
                controller: _labelController,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "Label",
                ),
              ),
              TextFormField(
                controller: _weightController,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "Weight"
                ),
              ),
            
            //Calls the changeText function written in homepage
            //Passes the controller text
            ElevatedButton(
              onPressed: () => {
                widget.changeText(
                  _labelController.text,
                  int.parse(_weightController.text),
                )
              },
              child: Text("Submit"),
              ), 
          ],
        ),
      ),
    );
  }
}