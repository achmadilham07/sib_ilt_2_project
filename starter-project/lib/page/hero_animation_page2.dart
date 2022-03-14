import 'package:flutter/material.dart';

class HeroAnimationPage2 extends StatelessWidget {
  const HeroAnimationPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          // TODO: add hero widget and give the same tag with other page
          child: const FlutterLogo(size: 300),
        ),
      ),
    );
  }
}
