import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Dashboard",
              style: TextStyle(color: Colors.grey.shade800, fontSize: 20)),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage("assets/images/one.jpg"),
              ),
            )
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Today",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        width: 100,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Colors.blue,
                              Colors.blue.withOpacity(.7)
                            ])),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Steps",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                              SizedBox(
                                height: 20,
                              ),
                              Text("3 500",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w200))
                            ],
                          ),
                        ))),
                Expanded(
                    child: Container(
                        width: 100,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Colors.pink,
                              Colors.red.withOpacity(.7)
                            ])),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Sports",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                              SizedBox(
                                height: 20,
                              ),
                              Text("25 min",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w200))
                            ],
                          ),
                        )))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Health Categories",
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade200),
                        ),
                      ),
                      child: Text("Activity",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade200),
                        ),
                      ),
                      child: Text("Activity",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade200),
                        ),
                      ),
                      child: Text("Activity",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade200),
                        ),
                      ),
                      child: Text("Activity",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            )
          ]),
        )));
  }
}
