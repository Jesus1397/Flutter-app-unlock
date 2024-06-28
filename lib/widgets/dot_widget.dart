import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  final String? digit;

  const DotWidget({this.digit, super.key});

  @override
  Widget build(BuildContext context) {
    if (digit != null) {
      return SizedBox(
        height: 36,
        child: Text(
          digit!,
          style: const TextStyle(
            fontSize: 32,
            color: Color(0xff3699CA),
          ),
        ),
      );
    }

    return SizedBox(
      height: 36,
      child: Stack(
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
      ),
    );
  }
}
