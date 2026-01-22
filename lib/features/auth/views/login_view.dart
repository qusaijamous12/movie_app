import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constant/barrier_files.dart';
import '../../../core/helper/app_router.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../core/widgets/my_button.dart';
import '../../../core/widgets/my_text_button.dart';
import '../../../core/widgets/my_text_field.dart';
import 'sign_up.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/social_login.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.all(AppConstant.kPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: AlignmentDirectional.topStart,
                child: CustomText(title: 'Sign In', fontSize: AppFontSize.fs24),
              ),

              const Gap(AppConstant.kPadding * 2),
              MyTextField(label: 'Email', controller: _email),
              const Gap(AppConstant.kPadding),
              MyTextField(
                label: 'Password',
                controller: _password,
                isObsecure: true,
              ),

              const SizedBox(height: AppConstant.kPadding * 2),
              MyTextButton(title: 'Forget password?', onPressed: () {}),
              const Gap(AppConstant.kPadding),
              const MyButton(title: 'Sign In'),
              const SocialLogin(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        mainTitle: 'Don’t you have an account?',
        btnTitle: 'Sign Up',
        onPressed: ()=>AppRouter.pushReplacement(const SignUp()),
      ),
    );
  }
}
