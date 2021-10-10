import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/attribute.dart';
import 'models/attribute.dart';
import 'models/character.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CharacterModel(), child: OracleApp()));
}

class OracleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Oracle',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: OracleHomePage(title: 'Project Oracle Home Page'),
    );
  }
}

class OracleHomePage extends StatefulWidget {
  OracleHomePage({Key? key, required this.title}) : super(key: key);

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _OracleHomePageState createState() => _OracleHomePageState();
}

class _OracleHomePageState extends State<OracleHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    CharacterModel character =
        Provider.of<CharacterModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AttributeComponent(
                      attribute: character.name,
                    ),
                    AttributeComponent(attribute: character.hitPoints),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: AttributeComponent(
                                attribute: character.strength)),
                        Expanded(
                            flex: 1,
                            child: AttributeComponent(
                                attribute: character.dexterity)),
                        Expanded(
                            flex: 1,
                            child: AttributeComponent(
                                attribute: character.constitution)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: AttributeComponent(
                                attribute: character.intelligence)),
                        Expanded(
                            flex: 1,
                            child: AttributeComponent(
                                attribute: character.wisdom)),
                        Expanded(
                            flex: 1,
                            child: AttributeComponent(
                                attribute: character.charisma)),
                      ],
                    ),
                    SizedBox(height: 10),
                    AttributeComponent(attribute: character.fortitude),
                    AttributeComponent(attribute: character.reflex),
                    AttributeComponent(attribute: character.will)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: ListView(
                  children: [
                    AttributeComponent(attribute: character.acrobatics),
                    AttributeComponent(attribute: character.appraise),
                    AttributeComponent(attribute: character.bluff),
                    AttributeComponent(attribute: character.climb),
                    AttributeComponent(attribute: character.craft1),
                    AttributeComponent(attribute: character.craft2),
                    AttributeComponent(attribute: character.diplomacy),
                    AttributeComponent(attribute: character.disableDevice),
                    AttributeComponent(attribute: character.disguise),
                    AttributeComponent(attribute: character.escapeArtist),
                    AttributeComponent(attribute: character.fly),
                    AttributeComponent(attribute: character.handleAnimal),
                    AttributeComponent(attribute: character.heal),
                    AttributeComponent(attribute: character.intimidate),
                    AttributeComponent(attribute: character.knowledgeArcana),
                    AttributeComponent(
                        attribute: character.knowledgeDungeoneering),
                    AttributeComponent(
                        attribute: character.knowledgeEngineering),
                    AttributeComponent(attribute: character.knowledgeGeography),
                    AttributeComponent(attribute: character.knowledgeHistory),
                    AttributeComponent(attribute: character.knowledgeLocal),
                    AttributeComponent(attribute: character.knowledgeNature),
                    AttributeComponent(attribute: character.knowledgeNobility),
                    AttributeComponent(attribute: character.knowledgePlanes),
                    AttributeComponent(attribute: character.knowledgeReligion),
                    AttributeComponent(attribute: character.linguistics),
                    AttributeComponent(attribute: character.perception),
                    AttributeComponent(attribute: character.perform1),
                    AttributeComponent(attribute: character.perform2),
                    AttributeComponent(attribute: character.perform3),
                    AttributeComponent(attribute: character.profession1),
                    AttributeComponent(attribute: character.profession2),
                    AttributeComponent(attribute: character.ride),
                    AttributeComponent(attribute: character.senseMotive),
                    AttributeComponent(attribute: character.sleightOfHand),
                    AttributeComponent(attribute: character.spellcraft),
                    AttributeComponent(attribute: character.stealth),
                    AttributeComponent(attribute: character.survival),
                    AttributeComponent(attribute: character.swim),
                    AttributeComponent(attribute: character.useMagicDevice),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
