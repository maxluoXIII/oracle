import 'package:flutter/foundation.dart';

abstract class AttributeModel with ChangeNotifier {

  AttributeModel(String name) : name = name;

  late int id;
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
  IntAttributeModel(String name) : super(name);

  @override
  String get finalValue => (int.tryParse(_baseValue) ?? 0).toString();
}

class StringAttributeModel extends AttributeModel {
  StringAttributeModel(String name) : super(name);

  @override
  String get finalValue => _baseValue;
}
