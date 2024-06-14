import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widgets/delete_button_widget.dart';
import 'package:myapp/widgets/num_button_widget.dart';
import 'package:myapp/widgets/scan_button_widget.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: size.height * 0.15,
            child: Image.asset('assets/sound-waves.png'),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: size.height * 0.1,
            child: Text(
              'Enter the code to login',
              style: GoogleFonts.montserrat(),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: size.height * 0.05,
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotWidget(),
                SizedBox(width: 20),
                DotWidget(),
                SizedBox(width: 20),
                DotWidget(),
                SizedBox(width: 20),
                DotWidget(),
                SizedBox(width: 20),
                DotWidget(),
                SizedBox(width: 20),
                DotWidget(),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.65,
            alignment: Alignment.center,
            child:  const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumButtonWidget(
                      num: '1',
                    ),
                    NumButtonWidget(
                      num: '2',
                    ),
                    NumButtonWidget(
                      num: '3',
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumButtonWidget(
                      num: '4',
                    ),
                    NumButtonWidget(
                      num: '5',
                    ),
                    NumButtonWidget(
                      num: '6',
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumButtonWidget(
                      num: '7',
                    ),
                    NumButtonWidget(
                      num: '8',
                    ),
                    NumButtonWidget(
                      num: '9',
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ScanButtonWidget(),
                    NumButtonWidget(
                      num: '0',
                    ),
                    DeleteButtonWidget(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class DotWidget extends StatelessWidget {
  const DotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[300],
          ),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xff3699CA),
          ),
        ),
      ],
    );
  }
}