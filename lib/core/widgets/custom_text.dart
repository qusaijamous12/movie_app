import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
    this.maxLines,
  });

  final String title;
  final double ?fontSize;
  final FontWeight ?fontWeight;
  final Color ?fontColor;
  final int ?maxLines;


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines:maxLines ,
      style: GoogleFonts.montserrat(
        fontSize: fontSize??AppFontSize.fs16,
        fontWeight: fontWeight??AppFontWeight.fwMedium,
        color: fontColor??Colors.white,
      ),

    );
  }
}
