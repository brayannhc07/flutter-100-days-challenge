import 'package:day_09/animations/fade_animation.dart';
import 'package:flutter/material.dart';

class FindEventPage extends StatelessWidget {
  const FindEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 248, 253, 1),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(Icons.menu, color: Colors.black),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/four.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Transform.translate(
                        offset: const Offset(15, -15),
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.white),
                              shape: BoxShape.circle,
                              color: Colors.yellow.shade800),
                        ))),
              )
            ]),
        body: SafeArea(
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              hintText: 'Search Event',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          )),
                    ),
                    const SizedBox(height: 30),
                    const FadeAnimation(
                        delay: 1.2,
                        child: _Item(image: "assets/images/one.jpg", date: 17)),
                    const SizedBox(height: 20),
                    const FadeAnimation(
                        delay: 1.3,
                        child: _Item(image: "assets/images/two.jpg", date: 18)),
                    const SizedBox(height: 20),
                    const FadeAnimation(
                        delay: 1.4,
                        child:
                            _Item(image: "assets/images/three.jpg", date: 19)),
                    const SizedBox(height: 20),
                    const FadeAnimation(
                        delay: 1.5,
                        child:
                            _Item(image: "assets/images/four.jpg", date: 20)),
                    const SizedBox(height: 20),
                  ],
                ))));
  }
}

class _Item extends StatelessWidget {
  final String image;
  final int date;

  const _Item({required this.image, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 200,
          margin: const EdgeInsets.only(right: 20.0),
          child: Column(
            children: [
              Text(date.toString(),
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              const Text("SEP",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Expanded(
            child: Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
          child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1)
                  ])),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Bumbershoot",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.white),
                      SizedBox(
                        width: 10,
                      ),
                      Text("19:00 PM", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              )),
        ))
      ],
    );
  }
}
