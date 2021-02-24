import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxweater/Controller/AppController.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  Color(0xffacdee5 ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.83,
                left: MediaQuery.of(context).size.width * 0.065,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "it's\nraining\nnow",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 0.1),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 20),
                  ),
                  Container(
                    height: 350,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset('assets/images/rainy.png'),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.70,
                left: MediaQuery.of(context).size.width * 0.065,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text(
                          "Dubai",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              letterSpacing: 0.1),
                        ),
                      ),
                      Row(
                        children: [
                          GetBuilder<AppController>(
                            init: AppController(),
                            builder: (value) => Text(
                              "${value.temp}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 120,
                                  letterSpacing: 0.01),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 60),
                            child: Text(
                              "\u00b0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                  letterSpacing: 0.01),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.10,
                left: MediaQuery.of(context).size.width * 0.51,
                child: Row(
                  children: [
                    Container(
                        width: 120,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 5),
                              child: Text(
                                "Wind",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 11.0, top: 10),
                              child: GetBuilder<AppController>(
                                  builder: (value) => Text(
                                    "${value.speed}Km/h",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18.0),
                                  )),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 120,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 5),
                              child: Text(
                                "Humidity",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 11.0, top: 10),
                              child: GetBuilder<AppController>(
                                  builder: (value) => Text(
                                    "${value.humidity}Km/h",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18.0),
                                  )),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget drawLoading() {
  return Container(
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}
