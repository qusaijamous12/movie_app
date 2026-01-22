import 'package:flutter/material.dart';

import '../constant/app_color.dart';
import 'custom_text.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.btnColor,
    required this.title,
    this.onPressed,
  });

  final Color? btnColor;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:  WidgetStatePropertyAll(btnColor??AppColor.kPrimary),
        minimumSize: WidgetStatePropertyAll(
          Size(MediaQuery.sizeOf(context).width, 40),
        ),
      ),
      child:  CustomText(title: title),
    );
  }
}
