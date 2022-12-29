import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  const TextLabel({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16),
    );
  }
}
