import 'package:flutter/material.dart';

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

class _HomePageState extends State<HomePage> {
  final List<String> _listItems = const [
    "assets/images/two.jpg",
    "assets/images/three.jpg",
    "assets/images/four.jpg",
    "assets/images/five.jpg",
    "assets/images/one.jpg",
    "assets/images/two.jpg",
    "assets/images/three.jpg",
    "assets/images/four.jpg",
    "assets/images/five.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Center(child: Text("Home")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("0"),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/one.jpg"),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Lifestyle Sale",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 30),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("Shop Now",
                              style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItems.map((item) {
                    return Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit.cover,
                            )),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child:
                                    const Icon(Icons.bookmark_border, size: 25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
