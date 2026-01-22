import 'package:flutter/material.dart';

import '../constant/app_color.dart';
import 'custom_text.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({super.key,required this.title,required this.onPressed});
  final String title;
  final  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomEnd,
      child: TextButton(
        style: ButtonStyle(
          overlayColor: WidgetStatePropertyAll(
            AppColor.kPrimary.withValues(alpha: 0.1),
          ),
        ),
        onPressed: onPressed,
        child:  CustomText(title: title),
      ),
    );
  }
}
