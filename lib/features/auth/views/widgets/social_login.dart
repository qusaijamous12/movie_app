import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constant/barrier_files.dart';
import '../../../../core/widgets/custom_text.dart';


class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final _images=[
      AppImages.facebookIcon,
      AppImages.googleIcon,
      AppImages.appleIcon,
    ];
    return Column(
      children: [
        const Gap(AppConstant.kPadding * 1.25),
        Row(
          children: [
            Expanded(
              child: Container(height: 2, color: AppColor.kBorder),
            ),
            const CustomText(title: '  Or  ', fontColor: Colors.white),
            Expanded(
              child: Container(height: 2, color: AppColor.kBorder),
            ),
          ],
        ),
        const Gap(AppConstant.kPadding),

        Row(
          spacing: AppConstant.kPadding,
          children: List.generate(_images.length, (index)=> Expanded(
            child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstant.kPadding * 2,
                vertical: AppConstant.kPadding * 1.25,
              ),
              decoration: BoxDecoration(
                color: AppColor.kBlack2,
                borderRadius: BorderRadiusDirectional.circular(
                  AppConstant.kRadius,
                ),
              ),
              child: Image.asset(
                _images[index],
                width: 20,
                height: 20,
              ),
            ),
          )),
        ),
      ],
    );
  }
}
