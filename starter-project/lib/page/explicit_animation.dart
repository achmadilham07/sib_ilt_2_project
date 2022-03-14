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

  // TODO: add dispose method so the controller can dispose when the page is close

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
              // TODO: play and repeat the animation using controller
            },
            child: const Text("Play !!"),
          ),
          OutlinedButton(
            onPressed: () {
              // TODO: reverse the animation using controller
            },
            child: const Text("Reverse !!"),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: stop the animation using controller
            },
            child: const Text("Stop !!"),
          )
        ],
      ),
    );
  }
}
