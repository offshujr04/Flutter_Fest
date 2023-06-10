import 'package:flutter/material.dart';
import 'package:helloworld/login.dart';
import 'package:helloworld/second.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'check',
    routes: {
      'check': (context) => Selectionpage(),
      'login': (context) => MyLogin(),
      // Add more routes here if needed
    },
  ));
}

// class Example extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _ExampleState();
// }

// class _ExampleState extends State<Example> {
//   List<String> _locations = ['A', 'B', 'C', 'D'];
//   String? _selectedLocation;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: DropdownButton(
//             hint: Text('Please choose a location'),
//             value: _selectedLocation,
//             onChanged: (String? newValue) {
//               setState(() {
//                 _selectedLocation = newValue!;
//               });
//             },
//             items: _locations.map((location) {
//               return DropdownMenuItem(
//                 child: Text(location),
//                 value: location,
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
