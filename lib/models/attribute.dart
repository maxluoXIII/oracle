import 'package:flutter/foundation.dart';

class AttributeModel with ChangeNotifier {

  AttributeModel(String name) : name = name;

  late int id;
  String name = "";
  String _baseValue = "";
  List<int> effectIds = [];

  int get finalValue => int.tryParse(_baseValue) ?? 0;

  String get baseValue => _baseValue;

  set baseValue(String newValue) {
    _baseValue = newValue;
    notifyListeners();
  }
}
