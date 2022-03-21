import 'dart:ffi';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool? dual;
  final Color? color;
  final void Function(String) cb;

  Button(
      {required this.text,
      this.dual = false,
      this.color = DEFAULT,
      required this.cb});

  Button.dual(
      {required this.text,
      this.dual = true,
      this.color = DEFAULT,
      required this.cb});

  Button.dark(
      {required this.text,
      this.dual = false,
      this.color = DARK,
      required this.cb});

  Button.operation(
      {required this.text,
      this.dual = false,
      this.color = OPERATION,
      required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: dual! ? 2 : 1,
        child: ElevatedButton(
          onPressed: () => cb(text),
          child: Text(text),
          style: ElevatedButton.styleFrom(
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            primary: color,
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w300,
            ),
          ),
        ));
  }
}
