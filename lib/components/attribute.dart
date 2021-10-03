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
            constraints: BoxConstraints.loose(Size.fromWidth(300)),
            child: Row(children: [
              Text(attribute.finalValue.toString()),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Base value", border: OutlineInputBorder()),
                  onSubmitted: (String newValue) => // may want to try using Focus widget
                      attribute.baseValue = newValue,
                ),
              ),
            ]),
          );
        }));
  }
}
