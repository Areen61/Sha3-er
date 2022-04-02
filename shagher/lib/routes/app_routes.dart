import 'package:flutter/cupertino.dart';

import '../packages/pages/home/views/body.dart';
import '../packages/pages/splash/views/body.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    PageSplash.id: (context) => const PageSplash(),
    PageHome.id: (context) => const PageHome()
  };
}
