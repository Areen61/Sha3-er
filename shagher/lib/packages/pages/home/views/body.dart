import 'package:flutter/material.dart';
import 'package:shagher/packages/pages/home/components/app_bar_home.dart';

import '../components/drawer/body_drawer.dart';

class PageHome extends StatelessWidget {
  static const String id = "PageHome";
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarHome(),
      body: Center(
        child: Text('Home'),
      ),
      drawer: BodyDrawer(),
    );
  }
}
