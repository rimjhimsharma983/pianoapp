import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const mywidget());
}

class mywidget extends StatelessWidget {
  const mywidget({Key? key}) : super(key: key);

  void playsound(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
  }

  Expanded myButton({required Color color, required int action}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(action);
        },
        child: Text(""),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(color: Color.fromARGB(255, 247, 7, 255), action: 1),
            myButton(color: Color.fromARGB(255, 7, 90, 255), action: 2),
            myButton(color: Color.fromARGB(255, 48, 255, 7), action: 3),
            myButton(color: Colors.amber, action: 4),
            myButton(color: Color.fromARGB(255, 255, 7, 119), action: 5),
            myButton(color: Color.fromARGB(255, 7, 230, 255), action: 6),
            myButton(color: Color.fromARGB(255, 255, 94, 7), action: 7),
          ],
        ),
      ),
    );
  }
}
