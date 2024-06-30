import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class ScanButtonWidget extends StatelessWidget {
  const ScanButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () async {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          builder: (BuildContext context) {
            return SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: GestureDetector(
                onTap: () async {
                  AuthProvider authProvider =
                      Provider.of<AuthProvider>(context, listen: false);
                  await authProvider.authenticateWithFingerprint();
                  if (authProvider.isAuthenticated) {
                    Navigator.pushReplacementNamed(context, 'home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Authentication failed')),
                    );
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Tap to log in',
                      style: GoogleFonts.montserrat(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Icon(
                      Icons.fingerprint,
                      color: Color(0xff3699CA),
                      size: 60,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: size.width * 0.25,
        height: size.width * 0.25,
        alignment: Alignment.center,
        child: const Icon(
          Icons.fingerprint,
          color: Color(0xff3699CA),
          size: 48,
        ),
      ),
    );
  }
}
