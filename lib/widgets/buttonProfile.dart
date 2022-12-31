import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({Key? key, required this.icon, required this.text})
      : super(key: key);
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 44,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xFFE6E9EA))),
        child: Row(
          children: [
            Image.asset(icon),
            SizedBox(
              width: 12,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
