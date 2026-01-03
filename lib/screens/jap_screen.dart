import 'package:counter/widgets/animated_counter.dart';
import 'package:counter/widgets/mala_progress.dart';
import 'package:flutter/material.dart';

class JapScreen extends StatefulWidget {
  const JapScreen({super.key});

  @override
  State<JapScreen> createState() => _JapScreenState();
}

class _JapScreenState extends State<JapScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Naam Jap'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
          MalaProgress(count: count),
           AnimatedCounter(
            count: count,
            fontSize: 48,
            color: Colors.brown,
            ),

            const SizedBox(height: 30),

            GestureDetector(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown.shade100,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.brown.withOpacity(0.3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.pan_tool_alt,
                    size: 50,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
