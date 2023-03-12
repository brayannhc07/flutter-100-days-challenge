import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  expandedHeight: 450,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/emma.jpg"),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.black,
                              Colors.black.withOpacity(0.3)
                            ])),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FadeInUp(
                                duration: const Duration(milliseconds: 500),
                                delay: const Duration(milliseconds: 500),
                                child: const Text("Emma Watson",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  FadeInUp(
                                    duration: const Duration(milliseconds: 500),
                                    delay: const Duration(milliseconds: 600),
                                    child: const Text(
                                      "60 videos",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  FadeInUp(
                                    duration: const Duration(milliseconds: 500),
                                    delay: const Duration(milliseconds: 650),
                                    child: const Text("240K Subscribers",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInUp(
                              duration: const Duration(milliseconds: 500),
                              delay: const Duration(milliseconds: 800),
                              child: const Text(
                                  "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.",
                                  style: TextStyle(
                                      color: Colors.grey, height: 1.4))),
                          const SizedBox(
                            height: 40,
                          ),
                          FadeInUp(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 800),
                            child: const Text("Born",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FadeInUp(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 800),
                            child: const Text("April, 15th 1990, Paris, France",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 800),
                            child: const Text("Nationality",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FadeInUp(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 800),
                            child: const Text("British",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 800),
                            child: const Text("Videos",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 500),
                              delay: const Duration(milliseconds: 900),
                              child: SizedBox(
                                height: 200,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    makeVideo(
                                        image: "assets/images/emma-1.jpg"),
                                    makeVideo(
                                        image: "assets/images/emma-2.jpg"),
                                    makeVideo(
                                        image: "assets/images/emma-3.jpg"),
                                  ],
                                ),
                              )),
                          const SizedBox(
                            height: 120,
                          )
                        ],
                      ),
                    )
                  ]),
                )
              ],
            ),
            Positioned.fill(
                bottom: 50,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FadeIn(
                      duration: const Duration(milliseconds: 500),
                      delay: const Duration(milliseconds: 1000),
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text("Follow",
                              style: TextStyle(color: Colors.white)),
                        ),
                      )),
                ))
          ],
        ));
  }

  Widget makeVideo({required String image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        margin: const EdgeInsets.only(right: 20),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.3)
          ])),
          child: const Align(
            child: Icon(Icons.play_arrow, color: Colors.white, size: 70),
          ),
        ),
      ),
    );
  }
}
