import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class HackedText extends StatefulWidget {
  final textStyle;
  final String text;
  final int numberOfLoops;
  final int numberOfMilliSeconds;
  HackedText({
    this.text,
    this.textStyle = const TextStyle(fontFamily: 'Hacked'),
    this.numberOfLoops = 10,
    this.numberOfMilliSeconds = 30
  });

  @override
  _HackedTextState createState() => _HackedTextState();
}

class _HackedTextState extends State<HackedText> {
  var _temp;
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
    'Z',
    '%',
    '/',
    '\\',
    '#',
    '@',
    '!',
    '*',
  ];
  @override
  void initState() {
    _temp = widget.text;
    Timer.periodic(
      Duration(milliseconds: widget.numberOfMilliSeconds),
      (timer) {
        setState(
          () {
            Random rand = Random();
            int randRange = rand.nextInt(_temp.length);
            int randAlph = rand.nextInt(alphabet.length);
            _temp = _temp.replaceFirst(_temp[randRange], alphabet[randAlph]);
            if (timer.tick == widget.numberOfLoops) {
              timer.cancel();
              if (!timer.isActive) {
                int i = 0;
                Timer.periodic(
                  Duration(milliseconds: widget.numberOfMilliSeconds),
                  (secondTimer) {
                    if (i == _temp.length) {
                      secondTimer.cancel();
                    } else {
                      setState(() {
                        _temp = _temp.replaceFirst(_temp[i], widget.text[i]);
                        i++;
                      });
                    }
                  },
                );
              }
            }
          },
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _temp,
      style: widget.textStyle,
    );
  }
}
