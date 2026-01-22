import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/barrier_files.dart';
import 'custom_text.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    required this.label,
    required this.controller,
    this.suffixIcon,
    this.isObsecure = false,
    this.keyboardType
  });

  final String label;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool isObsecure;
  final TextInputType ?keyboardType;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool isObsecure;

  @override
  void initState() {
    isObsecure = widget.isObsecure!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      controller: widget.controller,
      cursorColor: AppColor.kBorder,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppConstant.kRadius)),
          borderSide: BorderSide(color: AppColor.kBorder),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppConstant.kRadius)),
          borderSide: BorderSide(color: AppColor.kBorder),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppConstant.kRadius)),
          borderSide: BorderSide(color: AppColor.kBorder),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppConstant.kRadius)),
        ),
        label: CustomText(title: widget.label, fontColor: AppColor.kBorder),

        suffixIcon:widget.isObsecure? GestureDetector(
          onTap: (){
            if(mounted)
            setState(() {
              isObsecure = !isObsecure;
            });
          },
          child:isObsecure?const Icon(CupertinoIcons.eye_slash, color: Color(0xff656565)) :const Icon(CupertinoIcons.eye, color: Color(0xff656565)),
        ):const SizedBox.shrink(),
      ),
      style: GoogleFonts.montserrat(color: Colors.white),
    );
  }
}
