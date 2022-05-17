import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String texto;
  const ButtonWidget({
    Key? key,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        texto,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}
