import 'package:flutter/material.dart';

void main() {
  runApp(const Aimyyshero());
}

class Aimyyshero extends StatelessWidget {
  const Aimyyshero({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Center(child: const Text('Aimy Initial Interface'))),
      body: Container(
        color: const Color.fromARGB(255, 233, 12, 178),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'hero-text',
                child: Material(
                  color: Colors.transparent,
                  child: AnimatedOpacity(
                    opacity: 1.0,
                    duration: const Duration(seconds: 2),
                    child: const Text(
                      'Welcome, Aimy!',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()),
                  );
                },
                child: const Text('Lets visit next page Aimyy!!!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pookie is here')),
      body: Container(
        color: const Color.fromARGB(255, 228, 224, 5),
        child: Center(
          child: Hero(
            tag: 'hero-text',
            child: Material(
              color: Colors.transparent,
              child: AnimatedOpacity(
                opacity: 1.0,
                duration: const Duration(seconds: 2),
                child: const Text(
                  'Thanks for Visiting!',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
