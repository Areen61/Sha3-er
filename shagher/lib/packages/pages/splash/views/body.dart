import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shagher/language/generated/key_lang.dart';
import 'package:shagher/packages/pages/home/views/body.dart';
import 'package:shagher/service/theme/app_theme.dart';
import 'package:shagher/themes/app_colors.dart';
import 'package:shagher/util/path_svg.dart';
import '../../../../util/path_images.dart';

class PageSplash extends StatefulWidget {
  static const String id = 'PageSplash';
  const PageSplash({Key? key}) : super(key: key);

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      //var route = MaterialPageRoute(builder: (context) => const PageHome());
      Navigator.pushReplacementNamed(context, PageHome.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlueLight,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image(
              // Container(
              //   DecorationImage(SvgPicture: PathSvg.appLogo),
              // ),
              // TODO SvgPicture
              SvgPicture.asset(
                PathImages.appLogo,
                width: 150.w,
                height: 150.h,
              ),
              Text(
                // TODO welcomeMessage error
                KeyLang.welcomeMessage,
                style: AppTheme.h6(context).copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ).tr(),
            ],
          ),
        ),
      ),
    );
  }
}
