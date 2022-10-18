import 'package:flutter/material.dart';

class ClimateControl extends StatefulWidget {
  const ClimateControl({Key? key}) : super(key: key);

  @override
  State<ClimateControl> createState() => _ClimateControlState();
}

class _ClimateControlState extends State<ClimateControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 2, 5, 54),
      ),
      backgroundColor: const Color.fromARGB(255, 2, 5, 54),
      body: Container(
        constraints: const BoxConstraints.expand(),
        padding: const EdgeInsets.all(10),

        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 2, 5, 54),
              Color.fromARGB(255, 3, 3, 39),
            ])),
      ),
    );
  }
}
