import 'package:flutter/material.dart';
import 'package:sib_ilt_2_project/page/animated_align_widget.dart';
import 'package:sib_ilt_2_project/page/animated_container_widget.dart';
import 'package:sib_ilt_2_project/page/explicit_animation.dart';
import 'package:sib_ilt_2_project/page/hero_animation_page1.dart';
import 'package:sib_ilt_2_project/page/network_page.dart';
import 'package:sib_ilt_2_project/page/provider_number_widget.dart';
import 'package:sib_ilt_2_project/page/tween_animation_container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIB ILT 2 App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            'Animated Container Widget',
            'Animated Align Widget',
            'Tween Animation Container Widget',
            'Hero Animation Widget',
            'Explicit Animation Widget',
            'Provider Number',
            'Networking',
          ].mapIndexed((text, i) {
            return ListTile(
              title: Text(text),
              onTap: () => setState(() {
                _index = i;
                Navigator.pop(context);
              }),
            );
          }).toList(),
        ),
      ),
      body: IndexedStack(
        index: _index,
        children: const [
          AnimatedContainerPage(),
          AnimatedAlignPage(),
          TweenAnimationContainerWidget(),
          HeroAnimationPage1(),
          ExplicitAnimationWidget(),
          ProviderNumberWidget(),
          NetworkPage(),
        ],
      ),
    );
  }
}

extension IterableExtension<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
