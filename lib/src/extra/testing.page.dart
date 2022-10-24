import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/extra/extension.dart';
import 'package:nkgroup/src/extra/platform.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({super.key});

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  String platform = '';

  @override
  void initState() {
    var p = PlatformInfo().getCurrentPlatformType();
    setState(() {
      platform = p.name;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(platform),
          ),
          body: Column(
            children: [
              const Text("Tesing for web 3").toCenter(),
              TextFormField()
            ],
          )),
    );
  }
}
