
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3699CA),
      ),
      body: const Center(
        child: Text('Hi :V'),
      ),
    );
  }
}
