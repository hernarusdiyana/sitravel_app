import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  // String fontWeight;
  TextOverflow overflow;

  BigText({
    super.key,
    this.color = const Color(0x001C1C1C),
    required this.text,
    this.size = 20,
    // this.fontWeight,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        fontSize: size,
      ),
    );
  }
}
