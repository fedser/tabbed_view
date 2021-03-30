import 'package:demo/example_page.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class SimplePage extends StatefulWidget {
  @override
  SimplePageState createState() => SimplePageState();
}

class SimplePageState extends ExamplePageState {
  @override
  Widget buildContent() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    TabbedWiew tabbedView = TabbedWiew(model: TabbedWiewModel(tabs));
    return tabbedView;
  }
}
