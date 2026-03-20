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

  // bool _isChecked = false;
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: Row(
  //         children: [
  //           CheckBox(
  //             value: _isChecked,
  //             onChanged: (bool? newValue) {
  //               setState(() {
  //                 _isChecked = newValue!;
  //               });
  //             },
  //           ),
  //           const Text(
  //             'Accept Terms and Conditions'
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // ch-5 : ex-2

  // Column(
  //   children: Gender.values.map(
  //     (option) => RadioListTile<Gender> (
  //       title: Text(option.text),
  //       value: option,
  //       groupValue: _selectedOption,
  //       onChanged: (value) {
  //         setState(() {
  //           _selectedOption = value;
  //         });
  //       },
  //     ),
  //   ).toList(),
  // ),


  // ch-5 : ex-3

  // bool _isDarkMode = false;
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(
  //       brightness: _isDarkMode ? Brightness.dark : Brightness.light,
  //     ),
  //     home: Scaffold(
  //       body: SwitchListTile(
  //         title: const Text("Dark Mode"),
  //         value: _isDarkMode,
  //         onChanged: (bool newValue) {
  //           setState(() {
  //             _isDarkMode = newValue;
  //           });
  //         },
  //         activeColor: Colors.blue,
  //         secondary: Icon(Icons.lightbulb),
  //       ),
  //     ),
  //   );
  // }

  // ch-5: ex-4
  // final TextEditingController _name = TextEditingController();
  // final TextEditingController _password = TextEditingController();
  // string _info = "";
  
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: Column(
  //         children: [
  //           TextField(
  //             controller: _name,
  //             decoration: InputDecoration(
  //               labelText: "Name",
  //               hintText: "Enter Name",
  //               suffixIcon: Icon(Icons.person),
  //             ),
  //           ),
  //           TextField(
  //             controller: _password,
  //             obscureText: true,
  //             decoration: InputDecoration(
  //               labelText: "Password",
  //               hintText: "Enter password",
  //               suffixIcon: Icon(Icons.lock),
  //             ),
  //           ),
  //           ElevatedButton(
  //             onPressed: () {
  //               setState(() {
  //                 _info = "Name: ${_name.text} , Password: ${_password.text}.";
  //               });
  //             },
  //             child: Text("Save"),
  //           ),
  //           Text(_info),
  //         ],
  //       ),
  //     ),
  //   );
  // }


  // ch-5 : ex-5
  TextFormFeld(
    decoration: InputDecoration(
      hintText: "Email",
      prefixIcon: Icon(Icons.email),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Email connot be empty';
      } else if (!value.contains('@')) {
        return 'not email format';
      }
      return null;
    },
    onSaved: (value) {
      _email = value!;
    },
  ),

  }
