import 'dart:math';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FindingWord extends StatefulWidget {
  @override
  _FindingWordState createState() => _FindingWordState();
}

class _FindingWordState extends State<FindingWord> {
  String s;
  double _percent = 0.0;
  List alphabet = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  @override
  void initState() {
    s = _compute();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: CircularPercentIndicator(
              radius: 150.0,
              lineWidth: 5.0,
              percent: _percent,
              progressColor: Colors.green,
            ),
          ),
          Center(
            child: Text('${s}'),
          ),
        ],
      ),
    );
  }

  String _compute() {
    String name = "hey";
    String guessedName = "";
    int nameLength = name.length;
    Set generated = Set();
    while (guessedName != name) {
      if (guessedName.length > nameLength) {
        guessedName = "";
        continue;
      }
      int i = 0;
      while (i <= nameLength) {
        Random rand = Random();
        int r = rand.nextInt(alphabet.length);
        guessedName += alphabet[r];
        generated.add(guessedName);
        print(guessedName);
        i++;
      }
    }
    return guessedName;
  }
}
