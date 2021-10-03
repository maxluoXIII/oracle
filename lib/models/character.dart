import 'package:flutter/foundation.dart';
import 'package:oracle/models/attribute.dart';

class CharacterModel with ChangeNotifier {
  String name = "Unnamed Character";
  AttributeModel hitPoints = AttributeModel("Health");


}