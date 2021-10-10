import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oracle/models/attribute.dart';
import 'package:provider/provider.dart';

class AttributeComponent extends StatefulWidget {
  AttributeComponent({Key? key, required this.attribute}) : super(key: key);

  final AttributeModel attribute;

  @override
  _AttributeComponentState createState() => _AttributeComponentState();
}

class _AttributeComponentState extends State<AttributeComponent> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AttributeModel>(
        create: (context) => widget.attribute,
        child: Consumer<AttributeModel>(builder: (context, attribute, child) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 5, bottom: 5),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SelectableText.rich(TextSpan(text: "${attribute.name}: ",
                    children: [
                  TextSpan(
                      text: "${attribute.finalValue}",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Base value", border: OutlineInputBorder()),
                  onSubmitted:
                      (String newValue) => // may want to try using Focus widget
                          attribute.baseValue = newValue,
                ),
              ),
            ]),
          );
        }));
  }
}
