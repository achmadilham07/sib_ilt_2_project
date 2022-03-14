import 'package:flutter/material.dart';

class ExplicitAnimationWidget extends StatefulWidget {
  const ExplicitAnimationWidget({Key? key}) : super(key: key);

  @override
  _ExplicitAnimationWidgetState createState() =>
      _ExplicitAnimationWidgetState();
}

class _ExplicitAnimationWidgetState extends State<ExplicitAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Explicit Animation Widget',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
          ),
          RotationTransition(
            turns: _animationController,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // play and repeat the animation using controller
              _animationController
                ..forward()
                ..repeat();
            },
            child: const Text("Play !!"),
          ),
          OutlinedButton(
            onPressed: () {
              // reverse the animation using controller
              _animationController.reverse();
            },
            child: const Text("Reverse !!"),
          ),
          ElevatedButton(
            onPressed: () {
              // stop the animation using controller
              _animationController.stop();
            },
            child: const Text("Stop !!"),
          )
        ],
      ),
    );
  }
}
