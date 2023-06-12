// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   boxContainer("box 1", Alignment.bottomRight),
//                   boxContainer("box 2", Alignment.bottomLeft),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   boxContainer("box 3", Alignment.topRight),
//                   boxContainer("box 4", Alignment.topLeft),
//                 ],
//               ),
//             ],
//           ),
//           Center(
//             child: boxContainer("hello word", Alignment.center, true),
//           )
//         ],
//       ),
//     );
//   }

//   Container boxContainer(String name, Alignment direction,
//       [bool radius = false]) {
//     return Container(
//       decoration: BoxDecoration(
//           color: radius ? Colors.blue : Colors.green,
//           borderRadius: BorderRadius.circular(radius ? 50 : 0)),
//       alignment: direction,
//       width: 120,
//       height: 120,
//       padding: const EdgeInsetsDirectional.all(10),
//       child: Text(
//         name,
//         style: const TextStyle(fontSize: 24, color: Colors.pink),
//       ),
//     );
//   }
// }
