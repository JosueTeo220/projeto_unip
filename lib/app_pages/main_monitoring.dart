import 'package:flutter/material.dart';

class HomeMonitoring extends StatefulWidget {
  HomeMonitoring({Key? key}) : super(key: key);

  @override
  State<HomeMonitoring> createState() => _HomeMonitoringState();
}

class _HomeMonitoringState extends State<HomeMonitoring> {
  double valor = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: const EdgeInsets.only(top: 70, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Página",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: Colors.blue, width: 3),
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
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
                  Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ),
                ])
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 170,
                      height: 250,
                      child: Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: Offset(3, 2),
                                color: Color.fromARGB(255, 13, 3, 196))
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                              shadowColor: Colors.blue,
                              backgroundColor:
                                  Color.fromARGB(255, 19, 50, 248),
                              foregroundColor:
                                  Color.fromARGB(255, 9, 16, 148)),
                          onPressed: () {},
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Temperatura \nAtual",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(
                                          color: Colors.white, Icons.thermostat)
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 80),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          //* Alterar com API
                                          Text(
                                            "24",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "°c",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 180,
                                        height: 40,
                                        child: SliderTheme(
                                          data: const SliderThemeData(
                                            disabledThumbColor: Colors.white,
                                            disabledInactiveTrackColor: Colors.blue,
                                          ),
                                          child: Slider(
                                          thumbColor: Colors.white,
                                          value: valor,
                                          onChanged: null,
                                          min: 0,
                                          max: 10,
                                        ),
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      )),

                  //! Button 02

                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                        width: 170,
                        height: 250,
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 4,
                                  blurRadius: 10,
                                  offset: Offset(3, 2),
                                  color: Colors.blueAccent)
                            ],
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(20),
                                shadowColor: Colors.blue,
                                backgroundColor:
                                    const Color.fromARGB(255, 19, 153, 248),
                                foregroundColor:
                                    const Color.fromARGB(255, 13, 22, 187)),
                            onPressed: () {},
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Temperatura \nAtual",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Icon(
                                            color: Colors.white,
                                            Icons.thermostat)
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Row(
                                    children: const [
                                      //* Alterar com API
                                      Text(
                                        "24",
                                        style: TextStyle(
                                            fontSize: 40, color: Colors.white),
                                      ),
                                      Text(
                                        "°c",
                                        style: TextStyle(
                                            fontSize: 40, color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
        ]));
  }
}
