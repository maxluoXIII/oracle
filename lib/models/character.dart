import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:oracle/models/attribute.dart';

class CharacterModel with ChangeNotifier {
  static int _nextId = 0;
  static int get nextId => _nextId++;
  static set nextId(int next) {
    _nextId = next;
  }

  CharacterModel()
      : attrMap = Map<int, AttributeModel>(),
        name = StringAttributeModel("Name", nextId),
        maxHealth = IntAttributeModel("Health", nextId),
        race = StringAttributeModel("Race", nextId),
        alignment = StringAttributeModel("Alignment", nextId),
        strength = IntAttributeModel("Strength", nextId),
        dexterity = IntAttributeModel("Dexterity", nextId),
        constitution = IntAttributeModel("Constitution", nextId),
        intelligence = IntAttributeModel("Intelligence", nextId),
        wisdom = IntAttributeModel("Wisdom", nextId),
        charisma = IntAttributeModel("Charisma", nextId),
        fortitude = IntAttributeModel("Fortitude", nextId),
        reflex = IntAttributeModel("Reflex", nextId),
        will = IntAttributeModel("Will", nextId),
        skills = [
          IntAttributeModel("Acrobatics", nextId),
          IntAttributeModel("Appraise", nextId),
          IntAttributeModel("Bluff", nextId),
          IntAttributeModel("Climb", nextId),
          IntAttributeModel("Craft1", nextId),
          IntAttributeModel("Craft2", nextId),
          IntAttributeModel("Diplomacy", nextId),
          IntAttributeModel("Disable Device", nextId),
          IntAttributeModel("Disguise", nextId),
          IntAttributeModel("Escape Artist", nextId),
          IntAttributeModel("Fly", nextId),
          IntAttributeModel("Handle Animal", nextId),
          IntAttributeModel("Heal", nextId),
          IntAttributeModel("Intimidate", nextId),
          IntAttributeModel("Knowledge Arcana", nextId),
          IntAttributeModel("Knowledge Dungeoneering", nextId),
          IntAttributeModel("Knowledge Engineering", nextId),
          IntAttributeModel("Knowledge Geography", nextId),
          IntAttributeModel("Knowledge History", nextId),
          IntAttributeModel("Knowledge Local", nextId),
          IntAttributeModel("Knowledge Nature", nextId),
          IntAttributeModel("Knowledge Nobility", nextId),
          IntAttributeModel("Knowledge Planes", nextId),
          IntAttributeModel("Knowledge Religion", nextId),
          IntAttributeModel("Linguistics", nextId),
          IntAttributeModel("Perception", nextId),
          IntAttributeModel("Perform1", nextId),
          IntAttributeModel("Perform2", nextId),
          IntAttributeModel("Perform3", nextId),
          IntAttributeModel("Profession1", nextId),
          IntAttributeModel("Profession2", nextId),
          IntAttributeModel("Ride", nextId),
          IntAttributeModel("Sense Motive", nextId),
          IntAttributeModel("Sleight of Hand", nextId),
          IntAttributeModel("Spellcraft", nextId),
          IntAttributeModel("Stealth", nextId),
          IntAttributeModel("Survival", nextId),
          IntAttributeModel("Swim", nextId),
          IntAttributeModel("Use Magic Device", nextId),
        ] {
    attrMap[name.id] = name;
    attrMap[maxHealth.id] = maxHealth;
    attrMap[race.id] = race;
    attrMap[alignment.id] = alignment;

    attrMap[strength.id] = strength;
    attrMap[dexterity.id] = dexterity;
    attrMap[constitution.id] = constitution;
    attrMap[intelligence.id] = intelligence;
    attrMap[wisdom.id] = wisdom;
    attrMap[charisma.id] = charisma;

    attrMap[fortitude.id] = fortitude;
    attrMap[reflex.id] = reflex;
    attrMap[will.id] = will;

    for (var skill in skills) {
      attrMap[skill.id] = skill;
    }
  }

  Map<int, AttributeModel> attrMap;

  StringAttributeModel name;
  IntAttributeModel maxHealth;
  StringAttributeModel race;
  StringAttributeModel alignment;

  // Statblock
  IntAttributeModel strength;
  IntAttributeModel dexterity;
  IntAttributeModel constitution;
  IntAttributeModel intelligence;
  IntAttributeModel wisdom;
  IntAttributeModel charisma;

  // Saves
  IntAttributeModel fortitude;
  IntAttributeModel reflex;
  IntAttributeModel will;

  // Skills
  List<IntAttributeModel> skills;
}
