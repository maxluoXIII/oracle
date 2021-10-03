import 'package:flutter/foundation.dart';

class EffectModel extends ChangeNotifier {
  late int id;
  String name = "";
  String effectStr = "";
  List<int> targets = [];
  bool enabled = true;
}