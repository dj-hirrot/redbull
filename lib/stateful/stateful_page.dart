import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageStateful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
          title: Text(args["title"])
      ),
      body: Center(
        child: Clock(),
      ),
    );
  }
}

class Clock extends StatefulWidget {
  @override
  _Clock createState() => _Clock();
}

class _Clock extends State<Clock> {
  Timer _timer;
  final _formatter = DateFormat('HH:mm:ss');

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
        Duration(seconds: 1),
            (_t) => setState(() {})
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '${_formatter.format(DateTime.now())}',
      style: TextStyle(fontSize: 18.0),
    );
  }
}
