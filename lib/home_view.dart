import 'package:flutter/material.dart';
import 'package:flutter_signals/default_counter.dart';
import 'package:flutter_signals/signal_counter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DefaultCounter(),
                  ),
                );
              },
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Default Counter',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignalCounter(),
                  ),
                );
              },
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Signal Counter',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
