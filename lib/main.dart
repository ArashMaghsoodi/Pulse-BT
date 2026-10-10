import 'package:flutter/material.dart';

void main() {
  runApp(const PulseBtApp());
}

class PulseBtApp extends StatelessWidget {
  const PulseBtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pulse BT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1FB6FF),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const PlaceholderScreen(),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07151F),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(30),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Pulse BT',
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red.withAlpha(40),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.bluetooth_disabled, size: 18),
                            SizedBox(width: 8),
                            Text('Disconnected'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Bluetooth media integration is being configured.\nThe player will connect to the active phone media source in a later phase.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
