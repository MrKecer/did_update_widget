import 'package:did_update_widget/detail.dart';
import 'package:did_update_widget/enum.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ProgrammingFrameworks frameworks = ProgrammingFrameworks.reactNative;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const Text("Programmig Language"),
          const Divider(),
          FrameworkDetail(frameworks: frameworks),
          TextButton(
            onPressed: () {
              frameworks = ProgrammingFrameworks.reactNative;
              setState(() {});
            },
            child: const Text("React hangi dille yazılıyor?"),
          ),
          TextButton(
            onPressed: () {
              frameworks = ProgrammingFrameworks.flutter;
              setState(() {});
            },
            child: const Text("Flutter hangi dille yazılıyor?"),
          ),
        ]),
      )),
    );
  }
}
