import 'package:flutter/material.dart';
import 'package:graphic_utilities/border_bottom_box.dart';
import 'package:graphic_utilities/page_body.dart';
import 'package:labelled_text/labelled_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Convertitore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Convertitore Imperiale-Metrico'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int groups = 4;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: groups,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Lunghezza",
              ),
              Tab(
                text: "Massa",
              ),
              Tab(
                text: "Volume",
              ),
              Tab(
                text: "Temperatura",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PageBody(
              child: Column(
                children: [
                  BorderBottomBox(
                    child: Column(
                      children: [
                        LabelledText(
                          text: "",
                          labelText: "inch",
                          editable: true,
                        ),
                        LabelledText(
                          text: "",
                          labelText: "cm",
                          editable: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PageBody(child: Center(child: Text("qui ci sono le masse"))),
            PageBody(child: Center(child: Text("qui ci sono i volumi"))),
            PageBody(child: Center(child: Text("qui ci sono le temperature"))),
          ],
        ),
      ),
    );
  }
}
