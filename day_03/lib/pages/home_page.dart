import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: const Icon(null),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_basket, color: Colors.grey[800]),
              onPressed: () {},
            )
          ],
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInRight(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 500),
                    child: Text("Food Delivery",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeInRight(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 500),
                            child:
                                makeCategory(isActive: true, title: "Pizza")),
                        FadeInRight(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 650),
                            child: makeCategory(
                                isActive: false, title: "Burguers")),
                        FadeInRight(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 700),
                            child:
                                makeCategory(isActive: false, title: "Kebab")),
                        FadeInRight(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 750),
                            child:
                                makeCategory(isActive: false, title: "Desert")),
                        FadeInRight(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 800),
                            child:
                                makeCategory(isActive: false, title: "Salad"))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            FadeInRight(
                duration: const Duration(milliseconds: 500),
                delay: const Duration(milliseconds: 500),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Text("Free Delivery",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItem(image: "assets/images/one.jpg"),
                    makeItem(image: "assets/images/two.jpg"),
                    makeItem(image: "assets/images/three.jpg"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ]),
        ));
  }

  Widget makeCategory({required bool isActive, required String title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(title,
              style: TextStyle(
                  color: isActive ? Colors.white : Colors.grey[500],
                  fontSize: 18,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal)),
        ),
      ),
    );
  }

  Widget makeItem({required String image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.6,
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient:
                    LinearGradient(begin: Alignment.bottomRight, stops: const [
                  0.2,
                  0.9
                ], colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ])),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                  Column(
                    children: const [
                      Text("\$ 15.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Vegetarian Pizza",
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
