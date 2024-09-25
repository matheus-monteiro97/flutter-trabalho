import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GFG",
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: WrapW(),
    );
  }
}

class WrapW extends StatefulWidget {
  @override
  _WrapWState createState() => _WrapWState();
}

class _WrapWState extends State<WrapW> {
  Color containerColor = Colors.blue;

  void changeColor(Color newColor) {
    setState(() {
      containerColor = newColor;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mude a cor do Container"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Escolha uma cor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Vermelho', style: TextStyle(color: Colors.red)),
              onTap: () => changeColor(Colors.red),
            ),
            ListTile(
              title: Text('Amarelo', style: TextStyle(color: Colors.yellow)),
              onTap: () => changeColor(Colors.yellow),
            ),
            ListTile(
              title: Text('Azul', style: TextStyle(color: Colors.blue)),
              onTap: () => changeColor(Colors.blue),
            ),
            ListTile(
              title: Text('Rosa', style: TextStyle(color: Colors.pink)),
              onTap: () => changeColor(Colors.pink),
            ),
            ListTile(
              title: Text('Verde', style: TextStyle(color: Colors.green)),
              onTap: () => changeColor(Colors.green),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Abra o menu e escolha uma cor.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16.0,
              runSpacing: 16.0,
              children: <Widget>[
                Container(
                    color: containerColor,
                    width: 100,
                    height: 100,
                    child: Center(child: Text("C1", textScaleFactor: 2.5))),
                Container(
                    color: containerColor,
                    width: 100,
                    height: 100,
                    child: Center(child: Text("C2", textScaleFactor: 2.5))),
                Container(
                    color: containerColor,
                    width: 100,
                    height: 100,
                    child: Center(child: Text("C3", textScaleFactor: 2.5))),
                Container(
                    color: containerColor,
                    width: 100,
                    height: 100,
                    child: Center(child: Text("C4", textScaleFactor: 2.5))),
                Container(
                    color: containerColor,
                    width: 100,
                    height: 100,
                    child: Center(child: Text("C5", textScaleFactor: 2.5))),
                Container(
                    color: containerColor,
                    width: 100,
                    height: 100,
                    child: Center(child: Text("C6", textScaleFactor: 2.5))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
