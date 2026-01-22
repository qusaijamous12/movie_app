import 'package:flutter/cupertino.dart';

import '../../../../core/constant/barrier_files.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/my_text_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key,required this.mainTitle,required this.btnTitle,required this.onPressed});
  final String mainTitle;
  final String btnTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               CustomText(
                title: mainTitle,
                fontColor: AppColor.kGrey2,
              ),
              MyTextButton(title: btnTitle, onPressed: onPressed)
            ],
          ),
        ],
      ),
    );
  }
}
