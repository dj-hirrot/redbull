import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Flavor { development, production }

@immutable
class Constants {
  const Constants();

  // Routing name
  static const String pageList = '/list';
  static const String pageBasic = '/basic';
  static const String pageInherited = '/inherited';
  static const String pageStateful = '/stateful';
}
