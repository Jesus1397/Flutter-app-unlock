

import 'package:flutter/material.dart';

class DeleteButtonWidget extends StatelessWidget {
  const DeleteButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: size.width * 0.25,
        height: size.width * 0.25,
        alignment: Alignment.center,
        child: const Icon(
          Icons.backspace_outlined,
          size: 26,
        ),
      ),
    );
  }
}
