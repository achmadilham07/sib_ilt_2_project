import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Animated Container Widget',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            color: Colors.blue,
            height: _size,
            width: _size,
          ),
          ElevatedButton(
            child: const Text('Animate'),
            onPressed: () {
              // run the scalable number from 100 and 200,
              // set _size inside setState() method
              setState(() {
                _size = _size == 100 ? 200 : 100;
              });
            },
          ),
        ],
      ),
    );
  }
}
