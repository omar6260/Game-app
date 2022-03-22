import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raywender_app/control.dart';
import 'prompt.dart';
import 'control.dart';
import 'score.dart';

void main() {
  runApp(const BullsEyeApp());
}

class BullsEyeApp extends StatelessWidget {
  const BullsEyeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // rotation de l'emulatteur voici les paramettre...
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return MaterialApp(title: 'firts App', home: GamePage());
  }
}

class GamePage extends StatefulWidget {
  GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  var _alertIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Prompt(targetValue: 100),
            Control(),
            //  creation des Flatbutton
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: const Text('Start Over'),
                  onPressed: () {},
                ),
                const Text('Score: '),
                const Text('99999'),
                const Text('around'),
                const Text('999'),
                TextButton(
                  child: Text('Info'),
                  onPressed: () {},
                ),
                const Score(
                  totalScore: 0,
                  round: 1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    var okButton = TextButton(
      child: Text('Answer'),
      onPressed: () {
        Navigator.of(context).pop();
        _alertIsVisible = false;
        print('Answer present! $_alertIsVisible');
      },
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('hello there'),
            content: const Text('this is my first pop-up'),
            actions: [okButton],
            elevation: 5,
          );
        });
  }
}
