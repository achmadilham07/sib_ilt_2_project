import 'dart:math';

import 'package:flutter/material.dart';

class TweenAnimationContainerWidget extends StatefulWidget {
  const TweenAnimationContainerWidget({Key? key}) : super(key: key);

  @override
  State<TweenAnimationContainerWidget> createState() =>
      _TweenAnimationContainerWidgetState();
}

class _TweenAnimationContainerWidgetState
    extends State<TweenAnimationContainerWidget> {
  double _endAnimation = pi * 2.25;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tween Animation Container Widget',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
          ),
          TweenAnimationBuilder<double>(
            tween: Tween(begin: pi * 0.25, end: _endAnimation),
            duration: const Duration(seconds: 3),
            builder: (context, double value, Widget? child) {
              return Transform.rotate(
                angle: value,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100).subtract(
                      const BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
              );
            },
          ),
          OutlinedButton(
            onPressed: () {
              // do the rotation process from pi * 0.25 to pi * 2.25,
              // don't forget to set the _endAnimation value inside setState() method
              setState(() {
                _endAnimation =
                    _endAnimation == pi * 0.25 ? pi * 2.25 : pi * 0.25;
              });
            },
            child: const Text("Press !!"),
          ),
        ],
      ),
    );
  }
}
