import 'package:flutter/material.dart';
import 'package:nava/paginas_tabs/paginatb1.dart';
import 'package:nava/paginas_tabs/paginatb2.dart';
import 'package:nava/paginas_tabs/paginatb3.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Master Movil Nava",
      // Home
      home: Micasa()));
} // fin de main

class Micasa extends StatefulWidget {
  @override
  MicasaState createState() => MicasaState();
} // fin de micasa

class MicasaState extends State<Micasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  } // fin dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("barra de navegación inferior"),
        backgroundColor: Colors.teal,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.green,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.adb),
            ),
            Tab(
              icon: Icon(Icons.airport_shuttle),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ), // navigator pie de pagina
    ); // fin de scaffold
  } // fin de widget

} //MicasaState
