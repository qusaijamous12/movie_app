import 'dart:async';

import 'package:flutter/material.dart';

import '../core/constant/app_color.dart';
import '../core/constant/app_images.dart';
import '../core/helper/app_router.dart';
import '../core/widgets/custom_text.dart';
import 'auth/views/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer ?_timer;


  void _onStart(){
    _timer=Timer(const Duration(seconds: 3),_onFinish);
  }

  void _onFinish(){
    AppRouter.pushAndRemoveUntil(const LoginView());
  }

  @override
  void initState() {
    _onStart();
    super.initState();
  }


  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox.shrink(),
            Center(child: Image.asset(AppImages.youtubeIcon,width: MediaQuery.of(context).size.width/2.8,),),
            const CustomText(
            title: 'Version 1.0.1',
            )

          ],
        ),
      ),

    );
  }
}
