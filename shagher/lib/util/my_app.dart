import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../packages/pages/splash/views/body.dart';
import '../routes/app_routes.dart';
import '../themes/custom_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => MaterialApp(
        title: 'Sha3\'r',
        theme: CustomTheme.lightTheme(context),
        darkTheme: ThemeData.dark(),
        //themeMode: ThemeMode.light,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        debugShowCheckedModeBanner: false,
        //home: const PageSplash()
        initialRoute: PageSplash.id,
        routes: AppRoutes.routes,
      ),
    );
  }
}
