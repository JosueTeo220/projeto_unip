// ignore: file_names
import 'package:aplicacao_unip/app_pages/climate_control.dart';
import 'package:flutter/material.dart';

class pagesButtonsFistRow extends StatefulWidget {
  pagesButtonsFistRow({Key? key}) : super(key: key);

  @override
  State<pagesButtonsFistRow> createState() => _pagesButtonsFistRow();
}

class _pagesButtonsFistRow extends State<pagesButtonsFistRow> {
  @override
  Widget build(BuildContext context) {
    double valor = 20;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 173,
            height: 250,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 1, 3, 41),
                      Color.fromARGB(255, 17, 22, 107),
                    ]),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(2, 3),
                    color: Color.fromARGB(255, 0, 79, 147),
                  )
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.transparent,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ClimateControl()));
                  });
                },
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Temperatura \nAtual",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(color: Colors.white, Icons.thermostat)
                          ],
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
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
                          ],
                        )),
                    SizedBox(
                        child: SliderTheme(
                        data: const SliderThemeData(
                          trackHeight: 3,
                          disabledThumbColor: Colors.white,
                          disabledActiveTrackColor: Colors.blueAccent,
                          disabledInactiveTrackColor: Colors.blue,
                        ),
                        child: Slider(
                          thumbColor: Colors.white,
                          value: valor,
                          onChanged: null,
                          min: 0,
                          max: 70,
                        ),
                      ),
                      ),
                    
                  ],
                ),
              ),
            )),
        //! Button 02
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SizedBox(
              width: 173,
              height: 250,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 1, 3, 41),
                        Color.fromARGB(154, 1, 3, 41),
                        Color.fromARGB(205, 240, 133, 10),
                      ]),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(2, 3),
                      color: Color.fromARGB(188, 146, 89, 9),
                    )
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    elevation: 25,
                    shadowColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.transparent,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClimateControl()));
                    });
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Iluminação",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(color: Colors.white, Icons.light_mode)
                            ],
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  //* Alterar com API
                                  Text(
                                    //! Alterar com API
                                    "Escuro",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Luz \nApagada",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  Icon(
                                      color: Colors.white,
                                      Icons.lightbulb_rounded)
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
