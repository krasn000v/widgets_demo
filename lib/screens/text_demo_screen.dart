import 'package:flutter/material.dart';

class TextDemoScreen extends StatelessWidget {
  const TextDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent, width: 3),
                    color: Colors.lightBlueAccent),
                alignment: Alignment.center,
                child: const Text(
                  'Просто текст Просто текст Просто текст Просто текст Просто текст',
                  softWrap: false,
                  overflow: TextOverflow.clip,
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent, width: 3),
                    color: Colors.lightBlueAccent),
                alignment: Alignment.center,
                child: const Text.rich(
                  TextSpan(
                      text: 'Просто ',
                      style: TextStyle(color: Colors.red, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'длинный ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'текст',
                            style: TextStyle(fontStyle: FontStyle.italic))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
