// import 'package:flutter/material.dart';
// import 'package:imtihon_modul_6/scr/screen/sign_up.dart';
//
// import 'home.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Form(
//         key: formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset("assets/image/undraw_city_life_gnpr 1.png"),
//             Padding(
//               padding: const EdgeInsets.only(top: 20, left: 20),
//               child: Text(
//                 "Let's Sing In",
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF252B5C),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, top: 20),
//               child: Text(
//                 "quis nostrud exercitation ullamco laboris nisi ut",
//                 style: TextStyle(color: Color(0xFF53587A)),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: "Email",
//                 ),
//                 validator: (value) {
//                   if (value! == "exam@modul6.com") {
//                   } else {
//                     return "Invalid email";
//                   }
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: "Password",
//                 ),
//                 validator: (value) {
//                   if (value! == "Modul6exam") {
//                   } else {
//                     return "Invalid Password";
//                   }
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 20, right: 20, top: 15, bottom: 50),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Forgot password?",
//                     style: TextStyle(color: Color(0xFF1F4C6B)),
//                   ),
//                   Text("Show password",
//                       style: TextStyle(color: Color(0xFF1F4C6B))),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 30, right: 30, bottom: 60),
//               child: Container(
//                 height: 60,
//                 width: double.infinity,
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.lightGreen,
//                     ),
//                     onPressed: () {
//                       if (formKey.currentState!.validate()) {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (BuildContext context) => Home(),
//                           ),
//                         );
//                       } else {
//                         print("Error Login");
//                       };
//                     },
//                     child: Text("Login")),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 40, right: 30),
//               child: Row(
//                 children: [
//                   // Divider(
//                   //   color: Colors.red,
//                   // ),
//                   Text("-------------------------------------", style: TextStyle(color: Colors.grey),),
//                   Text("OR", style: TextStyle(color: Colors.grey),),
//                   Text("-------------------------------------", style: TextStyle(color: Colors.grey),),
//
//                   // Divider(
//                   //   color: Colors.grey,
//                   // ),
//                 ],
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: 68,
//                   width: 160,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Color(0xFFF5F4F8),
//                   ),
//                   child: Image.asset("assets/image/Google - normal.png"),
//                 ),
//                 Container(
//                   height: 68,
//                   width: 160,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Color(0xFFF5F4F8),
//                   ),
//                   child: Image.asset("assets/image/Layout.png"),
//                 ),
//               ],
//             ),
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 40),
//                 child: GestureDetector(
//                   onTap: (){
//                     Navigator.push(
//                         context,
//                     MaterialPageRoute(builder: (BuildContext context) => SignUp()),);
//                   },
//                     child: Text("Don't have an account? Register"),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
