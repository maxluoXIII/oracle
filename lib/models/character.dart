import 'package:flutter/foundation.dart';
import 'package:oracle/models/attribute.dart';

class CharacterModel with ChangeNotifier {
  StringAttributeModel name = StringAttributeModel("Name");
  IntAttributeModel hitPoints = IntAttributeModel("Health");

  // Statblock
  IntAttributeModel strength = IntAttributeModel("Strength");
  IntAttributeModel dexterity = IntAttributeModel("Dexterity");
  IntAttributeModel constitution = IntAttributeModel("Constitution");
  IntAttributeModel intelligence = IntAttributeModel("Intelligence");
  IntAttributeModel wisdom = IntAttributeModel("Wisdom");
  IntAttributeModel charisma = IntAttributeModel("Charisma");

  // Saves
  IntAttributeModel fortitude = IntAttributeModel("Fortitude");
  IntAttributeModel reflex = IntAttributeModel("Reflex");
  IntAttributeModel will = IntAttributeModel("Will");

  // Skills
  IntAttributeModel acrobatics = IntAttributeModel("Acrobatics");
  IntAttributeModel appraise = IntAttributeModel("Appraise");
  IntAttributeModel bluff = IntAttributeModel("Bluff");
  IntAttributeModel climb = IntAttributeModel("Climb");
  IntAttributeModel craft1 = IntAttributeModel("Craft1");
  IntAttributeModel craft2 = IntAttributeModel("Craft2");
  IntAttributeModel diplomacy = IntAttributeModel("Diplomacy");
  IntAttributeModel disableDevice = IntAttributeModel("Disable Device");
  IntAttributeModel disguise = IntAttributeModel("Disguise");
  IntAttributeModel escapeArtist = IntAttributeModel("Escape Artist");
  IntAttributeModel fly = IntAttributeModel("Fly");
  IntAttributeModel handleAnimal = IntAttributeModel("Handle Animal");
  IntAttributeModel heal = IntAttributeModel("Heal");
  IntAttributeModel intimidate = IntAttributeModel("Intimidate");
  IntAttributeModel knowledgeArcana = IntAttributeModel("Knowledge Arcana");
  IntAttributeModel knowledgeDungeoneering = IntAttributeModel("Knowledge Dungeoneering");
  IntAttributeModel knowledgeEngineering = IntAttributeModel("Knowledge Engineering");
  IntAttributeModel knowledgeGeography = IntAttributeModel("Knowledge Geography");
  IntAttributeModel knowledgeHistory = IntAttributeModel("Knowledge History");
  IntAttributeModel knowledgeLocal = IntAttributeModel("Knowledge Local");
  IntAttributeModel knowledgeNature = IntAttributeModel("Knowledge Nature");
  IntAttributeModel knowledgeNobility = IntAttributeModel("Knowledge Nobility");
  IntAttributeModel knowledgePlanes = IntAttributeModel("Knowledge Planes");
  IntAttributeModel knowledgeReligion = IntAttributeModel("Knowledge Religion");
  IntAttributeModel linguistics = IntAttributeModel("Linguistics");
  IntAttributeModel perception = IntAttributeModel("Perception");
  IntAttributeModel perform1 = IntAttributeModel("Perform1");
  IntAttributeModel perform2 = IntAttributeModel("Perform2");
  IntAttributeModel perform3 = IntAttributeModel("Perform3");
  IntAttributeModel profession1 = IntAttributeModel("Profession1");
  IntAttributeModel profession2 = IntAttributeModel("Profession2");
  IntAttributeModel ride = IntAttributeModel("Ride");
  IntAttributeModel senseMotive = IntAttributeModel("Sense Motive");
  IntAttributeModel sleightOfHand = IntAttributeModel("Sleight of Hand");
  IntAttributeModel spellcraft = IntAttributeModel("Spellcraft");
  IntAttributeModel stealth = IntAttributeModel("Stealth");
  IntAttributeModel survival = IntAttributeModel("Survival");
  IntAttributeModel swim = IntAttributeModel("Swim");
  IntAttributeModel useMagicDevice = IntAttributeModel("Use Magic Device");
}