import 'package:flutter/material.dart';

class PageBasic extends StatefulWidget {
  PageBasic({Key key}) : super(key: key);

  @override
  _PageBasicState createState() => _PageBasicState();
}

class _PageBasicState extends State<PageBasic> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args["title"]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times.'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        child: Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.05, 0.05),
                blurRadius: 155.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        onTap: () {
          setState(() => _counter++);
        },
      ),
    );
  }
}