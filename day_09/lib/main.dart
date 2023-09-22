import 'package:day_09/animations/fade_animation.dart';
import 'package:day_09/find_event_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween<double>(begin: 1, end: 30).animate(_scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(
              context,
              PageTransition(
                  child: const FindEventPage(),
                  type: PageTransitionType.fade,
                  duration: const Duration(milliseconds: 500)));
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.3),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FadeAnimation(
                delay: 1,
                child: Text(
                    "Find the best locations near you for a good night.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        height: 1.1))),
            const SizedBox(height: 30),
            FadeAnimation(
                delay: 1.2,
                child: Text("Let us find you an event for your interest.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 25,
                        fontWeight: FontWeight.w200))),
            const SizedBox(
              height: 150,
            ),
            FadeAnimation(
              delay: 1.4,
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      hide = true;
                    });
                    _scaleController.forward();
                  },
                  child: AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context, child) => Transform.scale(
                        scale: _scaleAnimation.value, child: child),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow.shade700,
                      ),
                      child: !hide
                          ? const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Find nearest event",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17)),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            )
                          : null,
                    ),
                  )),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    ));
  }
}
