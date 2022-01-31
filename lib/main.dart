import 'package:converter_app/converter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graphic_utilities/page_body.dart';

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
  final int groups = 5;

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
                // text: "Lunghezza",
                icon: FaIcon(FontAwesomeIcons.ruler),
              ),
              Tab(
                // text: "Massa",
                icon: FaIcon(FontAwesomeIcons.weight),
              ),
              Tab(
                // text: "Volume",
                icon: FaIcon(FontAwesomeIcons.glassWhiskey),
              ),
              Tab(
                // text: "Temperatura",
                icon: FaIcon(FontAwesomeIcons.thermometerHalf),
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.blender),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PageBody(
              child: Column(
                children: [
                  Converter(
                    startUnity: "Inch",
                    endUnity: "cm",
                    conversion: (start) {
                      return start * 2.54;
                    },
                  ),
                  Converter(
                    startUnity: "Foot",
                    endUnity: "m",
                    conversion: (start) {
                      return start * 0.3048;
                    },
                  ),
                  Converter(
                    startUnity: "Jard",
                    endUnity: "m",
                    conversion: (start) {
                      return start * 0.9144;
                    },
                  ),
                  Converter(
                    startUnity: "mile",
                    endUnity: "km",
                    conversion: (start) {
                      return start * 1.609344;
                    },
                  ),
                ],
              ),
            ),
            PageBody(
              child: Column(
                children: [
                  Converter(
                    startUnity: "oz",
                    endUnity: "g",
                    conversion: (start) {
                      return start * 28.349523;
                    },
                  ),
                  Converter(
                    startUnity: "lb",
                    endUnity: "kg",
                    conversion: (start) {
                      return start * 0.45359237;
                    },
                  ),
                ],
              ),
            ),
            PageBody(
              child: Column(
                children: [
                  Converter(
                    startUnity: "pinta",
                    endUnity: "ml",
                    conversion: (start) {
                      return start * 568;
                    },
                  ),
                  Converter(
                    startUnity: "gallone",
                    endUnity: "l",
                    conversion: (start) {
                      return start * 4.546;
                    },
                  ),
                ],
              ),
            ),
            PageBody(
              child: Column(
                children: [
                  Converter(
                    startUnity: "°F",
                    endUnity: "°C",
                    conversion: (start) {
                      return (start - 32) / 1.8;
                    },
                  ),
                ],
              ),
            ),
            PageBody(
              child: Column(
                children: [
                  Converter(
                    startUnity: "Tazza",
                    endUnity: "ml",
                    conversion: (start) {
                      return start * 250;
                    },
                  ),
                  Converter(
                    startUnity: "cucchiaino",
                    endUnity: "g",
                    conversion: (start) {
                      return start * 5;
                    },
                  ),
                  Converter(
                    startUnity: "Cucchiaio",
                    endUnity: "g",
                    conversion: (start) {
                      return start * 20;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
