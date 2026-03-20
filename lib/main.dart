import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  // ch-3 : ex-1
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: Center(
  //         child: Text(
  //           "Text on the screen",
  //           style: TextStyle(color: Colors.amber, fontSize: 26, wordSpacing: 3),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // ch-3 : ex-2
  // Widget build(BuildContext context) {
  //   return MaterailApp(
  //     home: Scaffold(
  //       body: Column(
  //         children: [
  //           Text('Hello World!'),
  //           Text('Welcome to Flutter.'),
  //           Row(
  //             children: [
  //               Text("left:"), Text("right"),
  //             ],
  //           ),
  //         ],

  //       ),
  //     ),
  //   );
  // }

  // ch-4 : ex--1

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: DefaultTabController (
  //       length: 3,
  //       child: Scaffold(
  //         appBar: AppBar(
  //           bottom: const TabBar(
  //             tabs: [
  //               Tab(icon: Icon(Icons.directions_car)),
  //               Tab(icon: Icon(Icons.directions_transit)),
  //               Tab(icon: Icon(Icons.directions_bike)),
  //             ],
  //           ),
  //           title: const Text("Tabs in Flutter"),
  //         ),
  //         body: const TabBarView(
  //           children: [
  //             Icon(Icons.directions_car),
  //             Icon(Icons.directios_transit),
  //             Icon(Icons.directions_bike),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // ch-5 : ex-1

  bool _isChecked = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            CheckBox(
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked : newValue!;
                });
              },
            ),
            const Text(
              'Accept Terms and Conditions'
            ),
          ],
        ),
      ),
    );
  }

}
