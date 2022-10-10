import 'package:flutter/material.dart';

class HomeMonitoring extends StatefulWidget {
  HomeMonitoring({Key? key}) : super(key: key);

  @override
  State<HomeMonitoring> createState() => _HomeMonitoringState();
}

class _HomeMonitoringState extends State<HomeMonitoring> {
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        controller: _firstController,
        child: Container(
            constraints: const BoxConstraints.expand(),
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            color: const Color.fromARGB(255, 15, 2, 47),
            child: Column(children: [
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "Smart",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.blue[400]),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text(
                          "Room",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Página",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                    bottom: BorderSide(
                                        color: Colors.blue, width: 3),
                                  )),
                                  child: Text(
                                    "Inicial",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.blue[400]),
                                  ),
                                ))
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.wifi,
                                color: Colors.white,
                              ),
                            ])
                      ],
                    ),
                  ],
                ),
              ),
            ])));
  }
}
