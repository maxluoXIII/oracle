import 'package:flutter/foundation.dart';

class EffectModel extends ChangeNotifier {
  EffectModel(String name, int id)
      : name = name,
        id = id;

  int id;
  String name;
  String effectStr = "";
  List<int> targets = [];
  bool enabled = true;
}
