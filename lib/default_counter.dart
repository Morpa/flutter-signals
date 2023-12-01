import 'package:flutter/material.dart';
import 'package:flutter_signals/app_theme_signals.dart';
import 'package:signals/signals_flutter.dart';

class DefaultCounter extends StatefulWidget {
  const DefaultCounter({super.key});

  @override
  DefaultCounterState createState() => DefaultCounterState();
}

class DefaultCounterState extends State<DefaultCounter> {
  int _counter = 0;
  int _renderTimes = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    _renderTimes++;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Default Counter App'),
        actions: [
          Watch((_) {
            final isDark = brightness() == Brightness.dark;

            return IconButton(
              onPressed: () {
                brightness.value = isDark ? Brightness.light : Brightness.dark;
              },
              icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            );
          }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Render Times: $_renderTimes',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'decrementCounter',
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'incrementCounter',
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
