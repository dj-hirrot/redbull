import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';

class PageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App')),
      body: ListView(
        children: const <Widget>[
          _ListTile(title: 'PageBasic', page: Constants.pageBasic),
          _ListTile(title: 'PageInherited', page: Constants.pageInherited),
          _ListTile(title: 'PageStateful', page: Constants.pageStateful),
        ],
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({@required this.title, @required this.page});

  final String title;
  final String page;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.keyboard_arrow_right),
      onTap: () => Get.toNamed(page, arguments: { "title": title }),
    );
  }
}
