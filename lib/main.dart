import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClicked() {
    // State에게 새로운 데이터가 있다고 알려줌, 그래서 State가 반응해서 새로고침함.
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 30),
              ),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
