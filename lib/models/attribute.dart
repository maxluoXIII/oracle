import 'package:flutter/foundation.dart';

abstract class AttributeModel with ChangeNotifier {
  AttributeModel(String name, int id)
      : name = name,
        id = id;

  int id;
  String name = "";
  String _baseValue = "";
  List<int> effectIds = [];

  String get finalValue;

  String get baseValue => _baseValue;
  set baseValue(String newValue) {
    _baseValue = newValue;
    notifyListeners();
  }
}

class IntAttributeModel extends AttributeModel {
  IntAttributeModel(String name, int id) : super(name, id);

  @override
  String get finalValue => (int.tryParse(_baseValue) ?? 0).toString();
}

class StringAttributeModel extends AttributeModel {
  StringAttributeModel(String name, int id) : super(name, id);

  @override
  String get finalValue => _baseValue;
}
