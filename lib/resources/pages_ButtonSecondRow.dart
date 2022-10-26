import 'package:aplicacao_unip/app_pages/climate_control.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pages_ButtonSecondRow extends StatefulWidget {
  Pages_ButtonSecondRow({Key? key}) : super(key: key);

  @override
  State<Pages_ButtonSecondRow> createState() => _Pages_ButtonSecondRowState();
}

class _Pages_ButtonSecondRowState extends State<Pages_ButtonSecondRow> {
  @override
  Widget build(BuildContext context) {
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
                      Color.fromARGB(154, 1, 3, 41),
                      Color.fromARGB(169, 7, 123, 51),
                    ]),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(2, 3),
                    color: Color.fromARGB(124, 62, 180, 3),
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
                          "Nível de \nUmidade",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(color: Colors.white, Icons.water_drop_outlined)
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
                                //! Alterar com API
                                Text(
                                  "48",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white),
                                ),
                                Text(
                                  "%",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: const [
                                  //! Alterar com API
                                  Text(
                                    "Nível: ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  Text(
                                    "Normal",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )
                                ],
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
                        Color.fromARGB(205, 171, 10, 240),
                      ]),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(2, 3),
                      color: Color.fromARGB(163, 171, 10, 240),
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
                            "Despertador",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(color: Colors.white, Icons.timer)
                            ],
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    //! Alterar com API
                                    "09:00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 45,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  //! Alterar com API
                                  Text(
                                    "Dom-Sáb",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Horário marcado",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
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
