import 'package:flutter/material.dart';
import 'package:sib_ilt_2_project/page/hero_animation_page2.dart';

class HeroAnimationPage1 extends StatelessWidget {
  const HeroAnimationPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const HeroAnimationPage2(),
          ),
        );
      },
      // add hero widget and give the same tag with other page
      child: const Hero(
        tag: "hero_animation",
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
