import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constant/barrier_files.dart';
import '../../../core/helper/app_router.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../core/widgets/my_button.dart';
import '../../../core/widgets/my_text_button.dart';
import '../../../core/widgets/my_text_field.dart';
import 'login_view.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/social_login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _email = TextEditingController();
  final _name = TextEditingController();
  final _mobileNumber = TextEditingController();
  final _currentCity = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.all(AppConstant.kPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: CustomText(
                    title: 'Sign Up',
                    fontSize: AppFontSize.fs24,
                  ),
                ),

                const Gap(AppConstant.kPadding * 2),
                MyTextField(label: 'Name', controller: _name),
                const Gap(AppConstant.kPadding),
                MyTextField(label: 'Email', controller: _email),
                const Gap(AppConstant.kPadding),
                MyTextField(
                  label: 'Mobile Number',
                  controller: _mobileNumber,
                  keyboardType: TextInputType.number,
                ),
                const Gap(AppConstant.kPadding),
                MyTextField(label: 'Current City', controller: _currentCity),
                const Gap(AppConstant.kPadding),
                MyTextField(
                  label: 'Password',
                  controller: _password,
                  isObsecure: true,
                ),
                const Gap(AppConstant.kPadding * 2),
                const MyButton(title: 'Sign up'),
                const Gap(AppConstant.kPadding),
                const CustomText(
                  title:
                      'By clicking the “sign up” button, you accept the terms of the Privacy Policy',
                  fontSize: AppFontSize.fs14,
                  fontColor: AppColor.kGrey2,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(
          mainTitle: 'Already have an account?',
          btnTitle: 'Sign In',
          onPressed: () => AppRouter.pushReplacement(const LoginView()),
        ),
      ),
    );
  }
}
