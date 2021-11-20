import 'dart:ui';

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
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AttributeModel>(
        create: (context) => widget.attribute,
        child: Consumer<AttributeModel>(builder: (context, attribute, child) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SelectableText.rich(TextSpan(
                        text: "${attribute.name} (${attribute.id}): ",
                        children: [
                          TextSpan(
                              text: "${attribute.finalValue}",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ])),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Base value",
                          border: OutlineInputBorder()),
                      onSubmitted: (String
                              newValue) => // may want to try using Focus widget
                          attribute.baseValue = newValue,
                    ),
                  ),
                  IconButton(
                      onPressed: _toggleExpanded,
                      icon: Icon(
                          _expanded ? Icons.expand_less : Icons.expand_more))
                ]),
                if (_expanded) ...[
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Name",
                                border: OutlineInputBorder()),
                          )),
                      Expanded(
                          flex: 1,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Effect",
                                border: OutlineInputBorder()),
                          )),
                      IconButton(onPressed: null, icon: Icon(Icons.add))
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: TextButton(
                            onPressed: null,
                            child: const Text("Add Effect"),
                          )))
                ],
              ],
            ),
          );
        }));
  }

  void _toggleExpanded() {
    setState(() {
      _expanded = !_expanded;
    });
  }
}
