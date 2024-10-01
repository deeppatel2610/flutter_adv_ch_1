// import 'package:flutter/material.dart';
//
// import '../utils/golbal.dart';
//
// class Theme1 extends StatefulWidget {
//   const Theme1({super.key});
//
//   @override
//   State<Theme1> createState() => _Theme1State();
// }
//
// class _Theme1State extends State<Theme1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 400,
//           width: 350,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 const Text(
//                   'Yo Man!',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 40,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   "It's a simple example of\ndark theme",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isDark=false;
//                     });
//                   },
//                   child: Container(
//                     height: 80,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       color: Colors.yellow,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     alignment: Alignment.center,
//                     child: const Text(
//                       'Light Theme',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isDark=true;
//                     });
//                   },
//                   child: Container(
//                     height: 80,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     alignment: Alignment.center,
//                     child: const Text(
//                       'Dark Theme',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
