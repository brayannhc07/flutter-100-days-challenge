import 'package:day_06/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late PageController pageController;

  late AnimationController rippleController;
  late AnimationController scaleController;

  late Animation<double> rippleAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1);
    rippleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    scaleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    rippleAnimation =
        Tween<double>(begin: 80, end: 90).animate(rippleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController.forward();
            }
          });

    scaleAnimation = Tween<double>(begin: 1, end: 30.0).animate(scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(
              context,
              PageTransition(
                  child: const Dashboard(), type: PageTransitionType.fade));
        } else if (status == AnimationStatus.dismissed) {
          scaleController.forward();
        }
      });
    rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: pageController,
      children: [
        makePage(image: "assets/images/one.jpg"),
        makePage(image: "assets/images/two.jpg"),
        makePage(image: "assets/images/three.jpg"),
      ],
    ));
  }

  Widget makePage({image}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.5),
          ])),
          child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text("Exercise 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("15",
                          style: TextStyle(
                              color: Colors.yellow.shade400,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      const Text("Minutes",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3",
                          style: TextStyle(
                              color: Colors.yellow.shade400,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      const Text("Exercises",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Align(
                    child: Text("Start the morning with your health",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w100)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: AnimatedBuilder(
                          animation: rippleAnimation,
                          builder: (context, child) => SizedBox(
                                width: rippleAnimation.value,
                                height: rippleAnimation.value,
                                child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue.withOpacity(.4)),
                                    child: InkWell(
                                        onTap: () => scaleController.forward(),
                                        child: AnimatedBuilder(
                                          animation: scaleAnimation,
                                          builder: (context, child) =>
                                              Transform.scale(
                                                  scale: scaleAnimation.value,
                                                  child: Container(
                                                      margin: const EdgeInsets
                                                          .all(10),
                                                      decoration:
                                                          const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color: Colors
                                                                  .blue))),
                                        ))),
                              )))
                ],
              ))),
    );
  }
}
