import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget{

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is first assignment';

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _mainText = 'This changed!';
                });
              },
              child: Text('Change text'),
            ),
            Center(
              child: TextOutput(_mainText),
            ),
          ],
        );
  }
}