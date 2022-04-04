import 'package:flutter/material.dart';
import 'package:shagher/language/generated/key_lang.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shagher/util/path_svg.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(KeyLang.appName).tr(),
      actions: [IconButton(onPressed: () {}, icon: PathSvg.profileIcon)],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
