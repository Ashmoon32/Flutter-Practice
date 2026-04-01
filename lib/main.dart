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
  // TextFormFeld(
  //   decoration: InputDecoration(
  //     hintText: "Email",
  //     prefixIcon: Icon(Icons.email),
  //   ),
  //   validator: (value) {
  //     if (value == null || value.isEmpty) {
  //       return 'Email connot be empty';
  //     } else if (!value.contains('@')) {
  //       return 'not email format';
  //     }
  //     return null;
  //   },
  //   onSaved: (value) {
  //     _email = value!;
  //   },
  // ),

  // ch-6 : ex-1
  // void main() {
  //   runApp(const ImageDemo());
  // }

  // class ImageDemo extendss StatelessWidget {
  //   Widget build(BuildContext context) {
  //     return Scafffold(
  //       appBar: AppBar(title: const Text('Image Demo')),
  //       body: Image.network('https://www.example.com/abc.jpg'),
        
  //       // if image is from local file
  //       // body: Image.file('/storage/image.jpg'),

  //       // if image is from prject folder
  //       // body: Image.asset('../assets/sample.jpg'),
  //     );
  //   }
  // }

  // ch-6 : ex-2

  // void main() {
  //   runApp(const ImageDemo());
  // }

  // class ImageDemo extends StatelessWidget {
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       home: Scaffold(
  //         appBar: AppBar(title: const Text('Fade In Image')),
  //         body: Center(
  //           Center(child: CircularProgressIndicator()),
  //           child: FadeInImage.memoryNetwork(
  //             placeholder: kTransparentImage,
  //             image: 'https://www.example.com/abc.jpg',
  //           ),
  //         ),
  //       ),
  //     );
  //   }
  // }

  // ch-6 : ex-2

  // void main() {
  //   runApp(const ImageDemo());
  // }

  // class ImageDemo extends StatelessWidget {
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       home: Scaffold(
  //         appBar: AppBar(title: const Text('Fade In Image')),
  //         body: Center(
  //           child: FadeInImage.assetNetwork(
  //             placeholder: '../assets/lodd.gif',
  //             image: 'https://www.example.com/abd.jpeg',
  //           ),
  //         ),
  //       )
  //     );
  //   }
  // }

  // ch-6 : ex-3
  // class VideoDemo extends StatefulWidget {
  //   _controller = VideoPlayerController.networkUrl('https://www.example.com/video.mp4');

  //   // for local file
  //   // _controller = VideoPlayerController.file('file_path/video.mp4');

  //   // for project folder 
  //   // _controller = VideoPlayerController.asset('../assets/video.mp4');

  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       home: Scaffold(
  //         appBar: AppBar(title: const Text('Play/Pause Videos')),
  //         body: Center(
  //           child: VideoPlayer(_controller),
  //           ElevatedButton(
  //             onPressed: () {
  //               setState(() {
  //                 _controller.value.isPlaying ? _controller.pause() : _controller.play();
  //               });
  //             },
  //             child: Text(_controller.value.isPlaying ? 'Pause' : 'Play'),
  //           ),
  //         ),
  //       ),
  //     );
  //   }
  // }

  // ch-7: ex-1
  // bool b = false;
  // void _changeMode() {
  //   setState(() {
  //     b = !b;
  //   });
  // },

  // children: [
  //   AnimatedContainer(
  //     color: b ? Colors.teaAccent : Colors.blueAccent,
  //     height: b ? 300.0 : 100.0,
  //     duration: const Duration(seconds: 1),
  //     child: Center(
  //       child: Text(
  //         "Top",
  //         style: TextStyle(
  //           color: b ? Colors.black : Colors.white,
  //           fontSize: 30.0,
  //           fontWeight: FontWeight.w200,
  //         ),
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //   ),

  //   AnimatedContainer(
  //     color: b ? Colors.redAccent : Colors.orangeAccent,
  //     height: b ? 100.0 : 300.0,
  //     duration: const Duration(seconds: 1), // you missed const
  //     child: Center(
  //       child: Text(
  //         "Bottom",
  //         style: TextStyle(
  //           color: b ? Colors.black : Colors.white,
  //           fontSize: 30.0,
  //           fontWeight: FontWeight.w200,
  //         ),
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //   ),
  // ],

  // floatingActionButton: FloatingActionButton(
  //   onPressed: _changeMode,
  //   child: const Icon(Icons.change_circle),
  // ),


  // ch-7 : ex-2

  // const String _imageTag = 'my-hero-image';

  // child: GestureDetector(
  //   onTap: () {
  //     Navigator.of(context).push(
  //       MaterialPageRoute<void>(
  //         builder: (BuildContext context) {
  //           return const DetailScreen();
  //         },
  //       ),
  //     );
  //   },

  //   child: Hero(
  //     tag: _imageTag,
  //     child: Container(
  //       width: 100.0,
  //       height: 100.0,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(12.0),
  //         color: Colors.blueAccent.shade700,
  //       ),
  //       child: const Icon(
  //         Icons.camera_alt,
  //         color: Colors.white,
  //         size: 40,
  //       ),
  //     ),
  //   ),
  // ) ,


  // child: GestureDetector(
  //   onTap: () {
  //     Navigator.of(context).pop();
  //   },

  //   child: Hero(
  //     tag: _imageTag,
  //     child: Container(
  //       width: 300.0,
  //       height: 300.0,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(20.0),
  //         color: Colors.redAccent,
  //       ),

  //       child: const Icon(
  //         Icons.camera_alt,
  //         color: Colors.white,
  //         size: 150,
  //       ),
  //     ),
  //   ),
  // ),




  // ch-7 : ex-3

  // import 'package:flutter/material.dart';
  // import 'package:flutter animated splash/flutter animated splash';

  // return MaterialApp(
  //   theme: ThemeData(brightness: Brightness.dark),
  //   home: AnimatedSplash(
  //     backgroundColor: Colors.black,
  //     type: Transition.fade,
  //     curve: Curves.fastEaseInToSlowEaseOut,
  //     durationInSeconds: 3,
  //     navigator: const HomePage(),
  //     child: const FlutterLogo(
  //       color: Colors.blue,
  //       size: 200,
  //     ),
  //   ),
  // );

  // return Scaffold(
  //   appBar: AppBar(title: const Text('My Application'),
  //   backgroundColor: Colors.blue,
  //   foregroundColor: Colors.white,
  //   automaticallyImplyLeading: false,
  //   ),
  //   body: const Center(
  //     child:  Text(
  //       "Welcome To Flutter",
  //       style: TextStyle(
  //         color: Colors.white,
  //         fontSize: 30,
  //       ),
  //     ),
  //   ),
  // );


  // ch-8: ex-1
  

//   class DatabaseHelper {
//     static final DatabaseHelper instance = DatabaseHelper._init();
//     static Database? _database;

//     _database = await _initDB('items.db');


//     CREATE TABLE items (
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       name TEXT NOT NULL,
//       description TEXT NOT NULL
//     );

//     // CREATE 
//     Future<int>insertItems(Map<String, dynamic>row) async {
//       final db = await instance.database;
//       return await db.insert('items', row);
//     }

//     // READ
//     Future<List<Map<String, dynamic>>>getItems() async {
//       final db = await instance.database;
//       return await db.query('items');
//     }

//     // UPDATE
//     Future<int>updateItem(Map<String, dynamic>row) async {
//       final db = await instance.database;
//       int id = row['id'];
//       return await db.update(
//         'items',
//         'row',
//         where: 'id = ?',
//         whereArgs: [id],             
//       );
//     }

//     // DELETE
//     Future<int>deleteItem(int id) async {
//       final db = await instance.database;
//       return await db.delete(
//         'items',
//         where: 'id = ?',
//         whereArgs: [id],
//       );
//     }
//   }

//   class _MyAppState extends State<MyApp> {
//     final DatabaseHelper _dbHelper = DatabaseHelper.instance;
//     List<Map<String, dynamic>> _items = [];

//     @override
//     void initState() {
//       super.initState();
//       _loadItems();
//     }

//     Future<void> _loadItems() async {
//       final items = await _dbHelper.getItems();
//       setState(() {
//         _items = items;
//       });
//     }

//     Future<void> _insertItems() async {
//       await _dbHelper.insertItems({
//         'name': 'New Item',
//         'description': 'Some description',
//       });
//       _loaditems();
//     }

//     Future<void> _updateItem(int id) async {
//       await _dbHelper.updateItem({
//         'id': id,
//         'name': 'Updated Item',
//         'description': 'Updated Description',
//       });
//       _loadItems();
//     }

//     Future<void> _deleteItem(int id) async {
//       await _dbHelper.deleteItem(id);
//       _loadItems();
//     }

//     Widget build(BuildContext context) {
//       return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(title: const Text('SQLite Database Demo'),
//           ),
//           body: ListView.builder(
//             itemCount: _items.lenght,
//             itemBuilder: (context, index) {
//               final item = _items[index];

//               return ListTile(
//                 title: Text(item['name']),
//                 subtitle: Text(item['description']),
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.edit),
//                       onPressed: () => _updateItem(item['id']),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.delete),
//                       onPressed: () => _deleteItem(item['id']),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: _addItem,
//             child: const Icon(Icons.add),
//           ),
//           ),
//         );
//     }
// }




// random practice

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
//               suffixIcon: Icon(Icons.people),
//             ),
//           ),
//           TextField(
//             controller: _password,
//             obscureText: true,
//             decoration: InputDecoration(
//               labelText: "Password",
//               hintText: "Enter Password",
//               suffixIcon: Icon(Icons.lock),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               setStated(() {
//                 _info = "Name: ${_name.text}, Password: ${_pasword.text}";
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

// *

// TextFormField(
//   decoration: const InputDecoration(
//     hintText: 'Email',
//     prefixIcon: Icon(Icons.email),
//   ),
//   validator: (value) {
//     if (value == null || vale.isEmpty) {
//       return 'Email cannot be empty';
//     } else if (!value.contains('@')){
//       return 'not Email format';
//     }
//     return null;
//   },
//   onSaved: (value) {
//     _email = value!;
//   },
// ),


// void main() {
//   runApp(const ImageDemo());
// }

// class ImageDemo extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Image Demo"),
//       ),
//       body: Image.network("https://www.example.com/abc.jpg"),

//       body: Image.file("/storage/img.jpeg"),
//       body: Image.asset("../assets/img.jpeg"),
//     ),
//   }
// }

// void main() {
//   runApp(const ImageDemo());
// }

// class ImageDemo extends StatelessWidget{
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Fade In Image'),
//       ),
//       body: Center(
//         const Center(child: CircularProgressIndicator()),
//         child: FadeInImage.memoryNetwork(
//           placeholder: kTransparentImage,
//           image: 'https://www.example.con/abc.jpg',
//         ),
//       ),

//       body: Center(
//         child: FadeInImage.assetNetwork(
//           placeholder: '../assets/lodd.gif',
//           image: 'https://www.example.com/abc,jpg',
//         ),
//       ),

//     );
//   }
// }

//  class VideoDemo extends StatefulWidget {
//   _controller = VideoPlayerController.networkUrl('https://www.example.com/video.mp4');
//   _controller = VideoPlayerController.file('File_path/video.mp4');
//   _controller = VideoPlayerController.asset('../assets/video.mp4');

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Play/Pause Video'),
//         ),
//         body: Center (
//           child: VideoPlayer(_controller),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 _controller.value.isPlaying ? _controller.pause() : _controller.play(),
//               });
//             },
//             child: Text(_controller.value.isPlaying ? 'Pause' : 'Play'),
//           ),
//         ),
//       ),
//     );
//   }
//  }

// bool b = false;
// void _changeMode() {
//   setState(() {
//     b = !b;
//   });
// }

// children: [
//   AnimatedContainer(
//     color: b ? Colors.teaAccent : Colors.blueAccent,
//     height: b ? 300.0 : 100.0,
//     duration: const Duration(seconds: 1),
//     child: Center(
//        child: const Text(
//       'Top',
//       color: b ? Colors.black : Colors.white,
//       fontSize: 30.0,
//       fontWeight: FontWeight.w200,
//     ),
//     textAlign: TextAlign.center,
//     ),
//   ),


//   AnimatedContainer(
//     color: b ? Colors.redAccent : Colors.orangeAccent,
//     height: b ? 100.0 : 300.0,
//     duration: Duration(seconds: 1),
//     child: Center(
//       child: Text(
//         'Bottom',
//         style: TextStyle(
//           color: b ? Colors.black : Colors.white,
//           fontSize: 30.0,
//           fontWeight: FontWeight.w200,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   ),
// ]

// floatinActionButton: FloatingActionButton(
//   onPressed: _changeMode(),
//   child: const Icon(Icons.change_circle),
// ),

// child: GestureDetector(
//   onTap: () {
//     Navigator.of(context).push(
//     MaterialPageRoute<void>(
//       builder: (BuildContext context){
//         return const DetailScreen();
//       },
//     ),
//   );
//   },

//   child: Hero(
//     tag: _imageTag,
//     child: Container(
//       width: 100.0,
//       height: 100.0,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12.0),
//         color: Colors.blueAccent.shape700,
//       ),
//       child: const Icon(
//         Icons.camera_alt,
//         color: Colors.white,
//         size: 40,
//       ),
//     ),
//   ),
// ),

// child: GestureDetector(
//   onTap: () {
//     Navigator.of(context).pop();
//   },

//   child: Hero(
//     tag: _imageTag,
//     child: Container(
//       width: 300.0,
//       height: 300.0,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.0),
//         color: Colors.redAccent,
//       ),
//       child: const Icon(
//         Icons.camera_alt,
//         color: Colors.white,
//         size: 150,
//       ),
//     ),
//   ),
// ),

// 1
// body: Container(
//   height: 80,
//   width: 260,
//   color: Colors.blueGrey,
//   alignment: Alignment.center,
//   margin: EdgeInsets.only(top: 100),
//   transform: Matrix4.rotationZ(-0.25),
//   child: Text(
//     "Container",
//     style: TextStyle(color: Colors.white, fontSize: 25),
//   ),
// ),

// 2



}
