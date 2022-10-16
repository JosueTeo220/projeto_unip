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
        backgroundColor: const Color.fromARGB(255, 15, 2, 47),
      ),
      backgroundColor: const Color.fromARGB(255, 15, 2, 47),
    );
  }
}
