import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  double _xValue = 0;
  double _yValue = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Animated Align Widget',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AnimatedAlign(
              alignment: Alignment(_xValue, _yValue),
              duration: const Duration(milliseconds: 600),
              child: ElevatedButton(
                child: Text(
                  'Alignment(${_xValue.toStringAsFixed(1)}, ${_yValue.toStringAsFixed(1)})',
                ),
                onPressed: () {
                  // run the number generator process using Random() method,
                  // give a range number between -1 and 1,
                  // set the _xValue and _yValue inside setState() method
                  final random = Random();
                  final _xIsPositive = random.nextBool();
                  final _yIsPositive = random.nextBool();
                  _xValue = random.nextDouble();
                  _yValue = random.nextDouble();
                  setState(() {
                    _xValue = _xIsPositive ? _xValue: _xValue * -1;
                    _yValue = _xIsPositive ? _yValue: _yValue * -1;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
