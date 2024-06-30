import 'package:flutter/material.dart';
import 'package:myapp/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3699CA),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Hi :V'),
            const SizedBox(
              height: 16,
            ),
            MaterialButton(
              color: const Color(0xff3699CA),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                authProvider.logout();
                Navigator.pushReplacementNamed(context, 'login');
              },
              child: const Text('Cerrar sesion'),
            ),
          ],
        ),
      ),
    );
  }
}
