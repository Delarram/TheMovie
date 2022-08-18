import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLine;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final TextOverflow? textOverflow;

  const CustomText(
      {Key? key,
        required this.text,
         this.fontSize,
        this.fontWeight,
        this.color, this.maxLine, this.textAlign, this.textDecoration, this.textOverflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          decoration: textDecoration
      ),
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: textOverflow,
    );
  }
}
