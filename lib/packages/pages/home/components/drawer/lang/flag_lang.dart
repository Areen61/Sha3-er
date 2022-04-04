import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlagLang extends StatelessWidget {
  const FlagLang({Key? key, required String flag, required String title})
      : _flag = flag,
        _title = title,
        super(key: key);

  final String _flag;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          // * flag
          Expanded(
            //flex: 5,
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_flag),
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              _title.tr(),
            ),
          )
        ],
      ),
    );
  }
}
