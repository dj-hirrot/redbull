import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'basic/basic_page.dart';
import 'inherited/inherited_page.dart';
import 'stateful/stateful_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageStateful(),
      routes: {
        Constants.pageBasic: (context) => PageBasic(),
        Constants.pageStateful: (context) => PageStateful(),
        Constants.pageInherited: (context) => PageInherited(),
      },
    );
  }
}
