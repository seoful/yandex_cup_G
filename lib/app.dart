import 'package:flutter/material.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/constructor_page.dart';
import 'package:yandex_cup_task_2/features/player/presentation/play_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConstructorPage(),
                    ));
              },
              child: const Text("Quest constructor"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PlayPage(),
                    ));
              },
              child: const Text("Play"),
            ),
          ],
        ),
      ),
    );
  }
}
