import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shagher/language/generated/key_lang.dart';
import 'package:shagher/themes/app_colors.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Text(
          KeyLang.appName.tr(),
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: AppColors.blueGrey),
        )));
  }
}
