// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter/rendering.dart';

// // // // class MyApp extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       title: 'Flutter Login Web',
// // // //       home: LoginPage(),
// // // //       debugShowCheckedModeBanner: false,
// // // //     );
// // // //   }
// // // // }

// // // // class LoginPage extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: Color(0xFFf5f5f5),
// // // //       body: ListView(
// // // //         padding: EdgeInsets.symmetric(
// // // //             horizontal: MediaQuery.of(context).size.width / 8),
// // // //         children: [
// // // //           Menu(),
// // // //           // MediaQuery.of(context).size.width >= 980
// // // //           //     ? Menu()
// // // //           //     : SizedBox(), // Responsive
// // // //           Body()
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class Menu extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Padding(
// // // //       padding: const EdgeInsets.symmetric(vertical: 30),
// // // //       child: Row(
// // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //         children: [
// // // //           Row(
// // // //             mainAxisAlignment: MainAxisAlignment.start,
// // // //             children: [
// // // //               _menuItem(title: 'Home'),
// // // //               _menuItem(title: 'About us'),
// // // //               _menuItem(title: 'Contact us'),
// // // //               _menuItem(title: 'Help'),
// // // //             ],
// // // //           ),
// // // //           Row(
// // // //             children: [
// // // //               _menuItem(title: 'Sign In', isActive: true),
// // // //               _registerButton()
// // // //             ],
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _menuItem({String title = 'Title Menu', isActive = false}) {
// // // //     return Padding(
// // // //       padding: const EdgeInsets.only(right: 75),
// // // //       child: MouseRegion(
// // // //         cursor: SystemMouseCursors.click,
// // // //         child: Column(
// // // //           children: [
// // // //             Text(
// // // //               '$title',
// // // //               style: TextStyle(
// // // //                 fontWeight: FontWeight.bold,
// // // //                 color: isActive ? Colors.deepPurple : Colors.grey,
// // // //               ),
// // // //             ),
// // // //             SizedBox(
// // // //               height: 6,
// // // //             ),
// // // //             isActive
// // // //                 ? Container(
// // // //                     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.deepPurple,
// // // //                       borderRadius: BorderRadius.circular(30),
// // // //                     ),
// // // //                   )
// // // //                 : SizedBox()
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _registerButton() {
// // // //     return Container(
// // // //       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
// // // //       decoration: BoxDecoration(
// // // //         color: Colors.white,
// // // //         borderRadius: BorderRadius.circular(15),
// // // //         boxShadow: [
// // // //           BoxShadow(
// // // //             color: Colors.grey.shade200,
// // // //             spreadRadius: 10,
// // // //             blurRadius: 12,
// // // //           ),
// // // //         ],
// // // //       ),
// // // //       child: Text(
// // // //         'Register',
// // // //         style: TextStyle(
// // // //           fontWeight: FontWeight.bold,
// // // //           color: Colors.black54,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class Body extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Row(
// // // //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //       children: [
// // // //         Container(
// // // //           width: 360,
// // // //           child: Column(
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: [
// // // //               Text(
// // // //                 'Sign In to \nMy Application',
// // // //                 style: TextStyle(
// // // //                   fontSize: 45,
// // // //                   fontWeight: FontWeight.bold,
// // // //                 ),
// // // //               ),
// // // //               SizedBox(
// // // //                 height: 30,
// // // //               ),
// // // //               Text(
// // // //                 "If you don't have an account",
// // // //                 style: TextStyle(
// // // //                     color: Colors.black54, fontWeight: FontWeight.bold),
// // // //               ),
// // // //               SizedBox(
// // // //                 height: 10,
// // // //               ),
// // // //               Row(
// // // //                 children: [
// // // //                   Text(
// // // //                     "You can",
// // // //                     style: TextStyle(
// // // //                         color: Colors.black54, fontWeight: FontWeight.bold),
// // // //                   ),
// // // //                   SizedBox(width: 15),
// // // //                   GestureDetector(
// // // //                     onTap: () {
// // // //                       print(MediaQuery.of(context).size.width);
// // // //                     },
// // // //                     child: Text(
// // // //                       "Register here!",
// // // //                       style: TextStyle(
// // // //                           color: Colors.deepPurple,
// // // //                           fontWeight: FontWeight.bold),
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //               Image.asset(
// // // //                 'assets/common/illustration-2.png',
// // // //                 width: 300,
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),

// // // //         Image.asset(
// // // //           'assets/common/illustration-1.png',
// // // //           width: 300,
// // // //         ),
// // // //         // MediaQuery.of(context).size.width >= 1300 //Responsive
// // // //         //     ? Image.asset(
// // // //         //         'assets/common/illustration-1.png',
// // // //         //         width: 300,
// // // //         //       )
// // // //         //     : SizedBox(),
// // // //         Padding(
// // // //           padding: EdgeInsets.symmetric(
// // // //               vertical: MediaQuery.of(context).size.height / 6),
// // // //           child: Container(
// // // //             width: 320,
// // // //             child: _formLogin(),
// // // //           ),
// // // //         )
// // // //       ],
// // // //     );
// // // //   }

// // // //   Widget _formLogin() {
// // // //     return Column(
// // // //       children: [
// // // //         TextField(
// // // //           decoration: InputDecoration(
// // // //             hintText: 'Enter email or Phone number',
// // // //             filled: true,
// // // //             fillColor: Colors.blueGrey[50],
// // // //             labelStyle: TextStyle(fontSize: 12),
// // // //             contentPadding: EdgeInsets.only(left: 30),
// // // //             enabledBorder: OutlineInputBorder(
// // // //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// // // //               borderRadius: BorderRadius.circular(15),
// // // //             ),
// // // //             focusedBorder: OutlineInputBorder(
// // // //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// // // //               borderRadius: BorderRadius.circular(15),
// // // //             ),
// // // //           ),
// // // //         ),
// // // //         SizedBox(height: 30),
// // // //         TextField(
// // // //           decoration: InputDecoration(
// // // //             hintText: 'Password',
// // // //             counterText: 'Forgot password?',
// // // //             suffixIcon: Icon(
// // // //               Icons.visibility_off_outlined,
// // // //               color: Colors.grey,
// // // //             ),
// // // //             filled: true,
// // // //             fillColor: Colors.blueGrey[50],
// // // //             labelStyle: TextStyle(fontSize: 12),
// // // //             contentPadding: EdgeInsets.only(left: 30),
// // // //             enabledBorder: OutlineInputBorder(
// // // //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// // // //               borderRadius: BorderRadius.circular(15),
// // // //             ),
// // // //             focusedBorder: OutlineInputBorder(
// // // //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// // // //               borderRadius: BorderRadius.circular(15),
// // // //             ),
// // // //           ),
// // // //         ),
// // // //         SizedBox(height: 40),
// // // //         Container(
// // // //           decoration: BoxDecoration(
// // // //             color: Colors.white,
// // // //             borderRadius: BorderRadius.circular(30),
// // // //             boxShadow: [
// // // //               BoxShadow(
// // // //                 color: Colors.deepPurple.shade100,
// // // //                 spreadRadius: 10,
// // // //                 blurRadius: 20,
// // // //               ),
// // // //             ],
// // // //           ),
// // // //           child: ElevatedButton(
// // // //             child: Container(
// // // //                 width: double.infinity,
// // // //                 height: 50,
// // // //                 child: Center(
// // // //                     child: Text(
// // // //                   "Sign In",
// // // //                   // style: TextStyle(
// // // //                   //   color: Colors.deepPurple,
// // // //                   // ),
// // // //                 ))),
// // // //             onPressed: () => print("it's pressed"),
// // // //             style: ElevatedButton.styleFrom(
// // // //               foregroundColor: Colors.deepPurple,
// // // //               backgroundColor: Colors.white,
// // // //               shape: RoundedRectangleBorder(
// // // //                 borderRadius: BorderRadius.circular(15),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ),
// // // //         SizedBox(height: 40),
// // // //         Row(children: [
// // // //           Expanded(
// // // //             child: Divider(
// // // //               color: Colors.grey[300],
// // // //               height: 50,
// // // //             ),
// // // //           ),
// // // //           Padding(
// // // //             padding: const EdgeInsets.symmetric(horizontal: 20),
// // // //             child: Text("Or continue with"),
// // // //           ),
// // // //           Expanded(
// // // //             child: Divider(
// // // //               color: Colors.grey[400],
// // // //               height: 50,
// // // //             ),
// // // //           ),
// // // //         ]),
// // // //         SizedBox(height: 40),
// // // //         Row(
// // // //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //           children: [
// // // //             _loginWithButton(image: 'assets/common/google.png'),
// // // //             _loginWithButton(image: 'assets/common/github.png', isActive: true),
// // // //             _loginWithButton(image: 'assets/common/facebook.png'),
// // // //           ],
// // // //         ),
// // // //       ],
// // // //     );
// // // //   }

// // // //   Widget _loginWithButton({String? image, bool isActive = false}) {
// // // //     return Container(
// // // //       width: 90,
// // // //       height: 70,
// // // //       decoration: isActive
// // // //           ? BoxDecoration(
// // // //               color: Colors.white,
// // // //               boxShadow: [
// // // //                 BoxShadow(
// // // //                   color: Colors.grey.shade300,
// // // //                   spreadRadius: 10,
// // // //                   blurRadius: 30,
// // // //                 )
// // // //               ],
// // // //               borderRadius: BorderRadius.circular(15),
// // // //             )
// // // //           : BoxDecoration(
// // // //               borderRadius: BorderRadius.circular(15),
// // // //               border: Border.all(color: Colors.grey.shade400),
// // // //             ),
// // // //       child: Center(
// // // //           child: Container(
// // // //         decoration: isActive
// // // //             ? BoxDecoration(
// // // //                 color: Colors.white,
// // // //                 borderRadius: BorderRadius.circular(35),
// // // //                 boxShadow: [
// // // //                   BoxShadow(
// // // //                     color: Colors.grey.shade400,
// // // //                     spreadRadius: 2,
// // // //                     blurRadius: 15,
// // // //                   )
// // // //                 ],
// // // //               )
// // // //             : BoxDecoration(),
// // // //         child: Image.asset(
// // // //           '$image',
// // // //           width: 35,
// // // //         ),
// // // //       )),
// // // //     );
// // // //   }
// // // // }

// // // /////////////////
// // // ///
// // // ///
// // // ///
// // // ///
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter/rendering.dart';

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Flutter Login Web',
// // //       home: LoginPage(),
// // //       debugShowCheckedModeBanner: false,
// // //     );
// // //   }
// // // }

// // // class LoginPage extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Color(0xFFf5f5f5),
// // //       body: LayoutBuilder(
// // //         builder: (context, constraints) {
// // //           return ListView(
// // //             padding: EdgeInsets.symmetric(
// // //                 horizontal: MediaQuery.of(context).size.width / 8),
// // //             children: [
// // //               constraints.maxWidth >= 980 ? Menu() : SizedBox(),
// // //               Body(),
// // //             ],
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }

// // // class Menu extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(vertical: 30),
// // //       child: Row(
// // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //         children: [
// // //           Row(
// // //             mainAxisAlignment: MainAxisAlignment.start,
// // //             children: [
// // //               _menuItem(title: 'Home'),
// // //               _menuItem(title: 'About us'),
// // //               _menuItem(title: 'Contact us'),
// // //               _menuItem(title: 'Help'),
// // //             ],
// // //           ),
// // //           Row(
// // //             children: [
// // //               _menuItem(title: 'Sign In', isActive: true),
// // //               _registerButton()
// // //             ],
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _menuItem({String title = 'Title Menu', bool isActive = false}) {
// // //     return Padding(
// // //       padding: const EdgeInsets.only(right: 30),
// // //       child: MouseRegion(
// // //         cursor: SystemMouseCursors.click,
// // //         child: Column(
// // //           children: [
// // //             Text(
// // //               '$title',
// // //               style: TextStyle(
// // //                 fontWeight: FontWeight.bold,
// // //                 color: isActive ? Colors.deepPurple : Colors.grey,
// // //               ),
// // //             ),
// // //             SizedBox(height: 6),
// // //             isActive
// // //                 ? Container(
// // //                     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
// // //                     decoration: BoxDecoration(
// // //                       color: Colors.deepPurple,
// // //                       borderRadius: BorderRadius.circular(30),
// // //                     ),
// // //                   )
// // //                 : SizedBox()
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _registerButton() {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
// // //       decoration: BoxDecoration(
// // //         color: Colors.white,
// // //         borderRadius: BorderRadius.circular(15),
// // //         boxShadow: [
// // //           BoxShadow(
// // //             color: Colors.grey.shade200,
// // //             spreadRadius: 10,
// // //             blurRadius: 12,
// // //           ),
// // //         ],
// // //       ),
// // //       child: Text(
// // //         'Register',
// // //         style: TextStyle(
// // //           fontWeight: FontWeight.bold,
// // //           color: Colors.black54,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class Body extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return LayoutBuilder(
// // //       builder: (context, constraints) {
// // //         if (constraints.maxWidth >= 1300) {
// // //           return Row(
// // //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //             children: [
// // //               Container(
// // //                 width: 360,
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     Text(
// // //                       'Sign In to \nMy Application',
// // //                       style: TextStyle(
// // //                         fontSize: 45,
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
// // //                     SizedBox(height: 30),
// // //                     Text(
// // //                       "If you don't have an account",
// // //                       style: TextStyle(
// // //                           color: Colors.black54, fontWeight: FontWeight.bold),
// // //                     ),
// // //                     SizedBox(height: 10),
// // //                     Row(
// // //                       children: [
// // //                         Text(
// // //                           "You can",
// // //                           style: TextStyle(
// // //                               color: Colors.black54,
// // //                               fontWeight: FontWeight.bold),
// // //                         ),
// // //                         SizedBox(width: 15),
// // //                         GestureDetector(
// // //                           onTap: () {
// // //                             print(MediaQuery.of(context).size.width);
// // //                           },
// // //                           child: Text(
// // //                             "Register here!",
// // //                             style: TextStyle(
// // //                                 color: Colors.deepPurple,
// // //                                 fontWeight: FontWeight.bold),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     Image.asset(
// // //                       'assets/common/illustration-2.png',
// // //                       width: 300,
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //               Image.asset(
// // //                 'assets/common/illustration-1.png',
// // //                 width: 300,
// // //               ),
// // //               Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                     vertical: MediaQuery.of(context).size.height / 6),
// // //                 child: Container(
// // //                   width: 320,
// // //                   child: _formLogin(),
// // //                 ),
// // //               ),
// // //             ],
// // //           );
// // //         } else if (constraints.maxWidth >= 800) {
// // //           return Column(
// // //             children: [
// // //               Container(
// // //                 width: 360,
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     Text(
// // //                       'Sign In to \nMy Application',
// // //                       style: TextStyle(
// // //                         fontSize: 45,
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
// // //                     SizedBox(height: 30),
// // //                     Text(
// // //                       "If you don't have an account",
// // //                       style: TextStyle(
// // //                           color: Colors.black54, fontWeight: FontWeight.bold),
// // //                     ),
// // //                     SizedBox(height: 10),
// // //                     Row(
// // //                       children: [
// // //                         Text(
// // //                           "You can",
// // //                           style: TextStyle(
// // //                               color: Colors.black54,
// // //                               fontWeight: FontWeight.bold),
// // //                         ),
// // //                         SizedBox(width: 15),
// // //                         GestureDetector(
// // //                           onTap: () {
// // //                             print(MediaQuery.of(context).size.width);
// // //                           },
// // //                           child: Text(
// // //                             "Register here!",
// // //                             style: TextStyle(
// // //                                 color: Colors.deepPurple,
// // //                                 fontWeight: FontWeight.bold),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     Image.asset(
// // //                       'assets/common/illustration-2.png',
// // //                       width: 300,
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //               Image.asset(
// // //                 'assets/common/illustration-1.png',
// // //                 width: 300,
// // //               ),
// // //               Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                     vertical: MediaQuery.of(context).size.height / 6),
// // //                 child: Container(
// // //                   width: 320,
// // //                   child: _formLogin(),
// // //                 ),
// // //               ),
// // //             ],
// // //           );
// // //         } else {
// // //           return Column(
// // //             children: [
// // //               Container(
// // //                 width: 360,
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     Text(
// // //                       'Sign In to \nMy Application',
// // //                       style: TextStyle(
// // //                         fontSize: 35,
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
// // //                     SizedBox(height: 20),
// // //                     Text(
// // //                       "If you don't have an account",
// // //                       style: TextStyle(
// // //                           color: Colors.black54, fontWeight: FontWeight.bold),
// // //                     ),
// // //                     SizedBox(height: 10),
// // //                     Row(
// // //                       children: [
// // //                         Text(
// // //                           "You can",
// // //                           style: TextStyle(
// // //                               color: Colors.black54,
// // //                               fontWeight: FontWeight.bold),
// // //                         ),
// // //                         SizedBox(width: 15),
// // //                         GestureDetector(
// // //                           onTap: () {
// // //                             print(MediaQuery.of(context).size.width);
// // //                           },
// // //                           child: Text(
// // //                             "Register here!",
// // //                             style: TextStyle(
// // //                                 color: Colors.deepPurple,
// // //                                 fontWeight: FontWeight.bold),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     Image.asset(
// // //                       'assets/common/illustration-2.png',
// // //                       width: 300,
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //               Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                     vertical: MediaQuery.of(context).size.height / 6),
// // //                 child: Container(
// // //                   width: 320,
// // //                   child: _formLogin(),
// // //                 ),
// // //               ),
// // //             ],
// // //           );
// // //         }
// // //       },
// // //     );
// // //   }

// // //   Widget _formLogin() {
// // //     return Column(
// // //       children: [
// // //         TextField(
// // //           decoration: InputDecoration(
// // //             hintText: 'Enter email or Phone number',
// // //             filled: true,
// // //             fillColor: Colors.blueGrey[50],
// // //             labelStyle: TextStyle(fontSize: 12),
// // //             contentPadding: EdgeInsets.only(left: 30),
// // //             enabledBorder: OutlineInputBorder(
// // //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// // //               borderRadius: BorderRadius.circular(15),
// // //             ),
// // //             focusedBorder: OutlineInputBorder(
// // //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// // //               borderRadius: BorderRadius.circular(15),
// // //             ),
// // //           ),
// // //         ),
// // //         SizedBox(height: 30),
// // //         TextField(
// // //           decoration: InputDecoration(
// // //             hintText: 'Password',
// // //             counterText: 'Forgot password?',
// // //             suffixIcon: Icon(
// // //               Icons.visibility_off_outlined,
// // //               color: Colors.grey,
// // //             ),
// // //             filled: true,
// // //             fillColor: Colors.blueGrey[50],
// // //             labelStyle: TextStyle(fontSize: 12),
// // //             contentPadding: EdgeInsets.only(left: 30),
// // //             enabledBorder: OutlineInputBorder(
// // //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// // //               borderRadius: BorderRadius.circular(15),
// // //             ),
// // //             focusedBorder: OutlineInputBorder(
// // //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// // //               borderRadius: BorderRadius.circular(15),
// // //             ),
// // //           ),
// // //         ),
// // //         SizedBox(height: 40),
// // //         MaterialButton(
// // //           onPressed: () {},
// // //           height: 45,
// // //           color: Colors.deepPurple,
// // //           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
// // //           shape: RoundedRectangleBorder(
// // //             borderRadius: BorderRadius.circular(10),
// // //           ),
// // //           child: Text(
// // //             "Sign In",
// // //             style: TextStyle(color: Colors.white),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // //////////////////////
// // ///
// // ///
// // ///
// // ///
// // import 'package:flutter/material.dart';
// // import 'package:flutter/rendering.dart';

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Login Web',
// //       home: LoginPage(),
// //       debugShowCheckedModeBanner: false,
// //     );
// //   }
// // }

// // class LoginPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Color(0xFFf5f5f5),
// //       body: LayoutBuilder(
// //         builder: (context, constraints) {
// //           return ListView(
// //             padding: EdgeInsets.symmetric(
// //                 horizontal: MediaQuery.of(context).size.width / 8),
// //             children: [
// //               constraints.maxWidth >= 980 ? Menu() : SizedBox(),
// //               Body(),
// //             ],
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// // class Menu extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 30),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.start,
// //             children: [
// //               _menuItem(title: 'Home'),
// //               _menuItem(title: 'About us'),
// //               _menuItem(title: 'Contact us'),
// //               _menuItem(title: 'Help'),
// //             ],
// //           ),
// //           Row(
// //             children: [
// //               _menuItem(title: 'Sign In', isActive: true),
// //               _registerButton()
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _menuItem({String title = 'Title Menu', bool isActive = false}) {
// //     return Padding(
// //       padding: const EdgeInsets.only(right: 30),
// //       child: MouseRegion(
// //         cursor: SystemMouseCursors.click,
// //         child: Column(
// //           children: [
// //             Text(
// //               '$title',
// //               style: TextStyle(
// //                 fontWeight: FontWeight.bold,
// //                 color: isActive ? Colors.deepPurple : Colors.grey,
// //               ),
// //             ),
// //             SizedBox(height: 6),
// //             isActive
// //                 ? Container(
// //                     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
// //                     decoration: BoxDecoration(
// //                       color: Colors.deepPurple,
// //                       borderRadius: BorderRadius.circular(30),
// //                     ),
// //                   )
// //                 : SizedBox()
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _registerButton() {
// //     return Container(
// //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(15),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.shade200,
// //             spreadRadius: 10,
// //             blurRadius: 12,
// //           ),
// //         ],
// //       ),
// //       child: Text(
// //         'Register',
// //         style: TextStyle(
// //           fontWeight: FontWeight.bold,
// //           color: Colors.black54,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class Body extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return LayoutBuilder(
// //       builder: (context, constraints) {
// //         if (constraints.maxWidth >= 1200) {
// //           return Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: [
// //               Container(
// //                 width: 360,
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       'Sign In to \nMy Application',
// //                       style: TextStyle(
// //                         fontSize: 45,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     SizedBox(height: 30),
// //                     Text(
// //                       "If you don't have an account",
// //                       style: TextStyle(
// //                           color: Colors.black54, fontWeight: FontWeight.bold),
// //                     ),
// //                     SizedBox(height: 10),
// //                     Row(
// //                       children: [
// //                         Text(
// //                           "You can",
// //                           style: TextStyle(
// //                               color: Colors.black54,
// //                               fontWeight: FontWeight.bold),
// //                         ),
// //                         SizedBox(width: 15),
// //                         GestureDetector(
// //                           onTap: () {
// //                             print(MediaQuery.of(context).size.width);
// //                           },
// //                           child: Text(
// //                             "Register here!",
// //                             style: TextStyle(
// //                                 color: Colors.deepPurple,
// //                                 fontWeight: FontWeight.bold),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     Image.asset(
// //                       'assets/common/illustration-2.png',
// //                       width: 300,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               Image.asset(
// //                 'assets/common/illustration-1.png',
// //                 width: 300,
// //               ),
// //               Padding(
// //                 padding: EdgeInsets.symmetric(
// //                     vertical: MediaQuery.of(context).size.height / 6),
// //                 child: Container(
// //                   width: 320,
// //                   child: _formLogin(),
// //                 ),
// //               ),
// //             ],
// //           );
// //         } else if (constraints.maxWidth >= 800) {
// //           return Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: [
// //               Expanded(
// //                 child: Container(
// //                   width: 360,
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Text(
// //                         'Sign In to \nMy Application',
// //                         style: TextStyle(
// //                           fontSize: 45,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       SizedBox(height: 30),
// //                       Text(
// //                         "If you don't have an account",
// //                         style: TextStyle(
// //                             color: Colors.black54, fontWeight: FontWeight.bold),
// //                       ),
// //                       SizedBox(height: 10),
// //                       Row(
// //                         children: [
// //                           Text(
// //                             "You can",
// //                             style: TextStyle(
// //                                 color: Colors.black54,
// //                                 fontWeight: FontWeight.bold),
// //                           ),
// //                           SizedBox(width: 15),
// //                           GestureDetector(
// //                             onTap: () {
// //                               print(MediaQuery.of(context).size.width);
// //                             },
// //                             child: Text(
// //                               "Register here!",
// //                               style: TextStyle(
// //                                   color: Colors.deepPurple,
// //                                   fontWeight: FontWeight.bold),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                       Image.asset(
// //                         'assets/common/illustration-2.png',
// //                         width: 300,
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               Expanded(
// //                 child: Padding(
// //                   padding: EdgeInsets.symmetric(
// //                       vertical: MediaQuery.of(context).size.height / 6),
// //                   child: Container(
// //                     width: 320,
// //                     child: _formLogin(),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           );
// //         } else {
// //           return Column(
// //             children: [
// //               Container(
// //                 width: 360,
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       'Sign In to \nMy Application',
// //                       style: TextStyle(
// //                         fontSize: 35,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     SizedBox(height: 20),
// //                     Text(
// //                       "If you don't have an account",
// //                       style: TextStyle(
// //                           color: Colors.black54, fontWeight: FontWeight.bold),
// //                     ),
// //                     SizedBox(height: 10),
// //                     Row(
// //                       children: [
// //                         Text(
// //                           "You can",
// //                           style: TextStyle(
// //                               color: Colors.black54,
// //                               fontWeight: FontWeight.bold),
// //                         ),
// //                         SizedBox(width: 15),
// //                         GestureDetector(
// //                           onTap: () {
// //                             print(MediaQuery.of(context).size.width);
// //                           },
// //                           child: Text(
// //                             "Register here!",
// //                             style: TextStyle(
// //                                 color: Colors.deepPurple,
// //                                 fontWeight: FontWeight.bold),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     Image.asset(
// //                       'assets/common/illustration-2.png',
// //                       width: 300,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               Padding(
// //                 padding: EdgeInsets.symmetric(
// //                     vertical: MediaQuery.of(context).size.height / 6),
// //                 child: Container(
// //                   width: 320,
// //                   child: _formLogin(),
// //                 ),
// //               ),
// //             ],
// //           );
// //         }
// //       },
// //     );
// //   }

// //   Widget _formLogin() {
// //     return Column(
// //       children: [
// //         TextField(
// //           decoration: InputDecoration(
// //             hintText: 'Enter email or Phone number',
// //             filled: true,
// //             fillColor: Colors.blueGrey[50],
// //             labelStyle: TextStyle(fontSize: 12),
// //             contentPadding: EdgeInsets.only(left: 30),
// //             enabledBorder: OutlineInputBorder(
// //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// //               borderRadius: BorderRadius.circular(15),
// //             ),
// //             focusedBorder: OutlineInputBorder(
// //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// //               borderRadius: BorderRadius.circular(15),
// //             ),
// //           ),
// //         ),
// //         SizedBox(height: 30),
// //         TextField(
// //           decoration: InputDecoration(
// //             hintText: 'Password',
// //             counterText: 'Forgot password?',
// //             suffixIcon: Icon(
// //               Icons.visibility_off_outlined,
// //               color: Colors.grey,
// //             ),
// //             filled: true,
// //             fillColor: Colors.blueGrey[50],
// //             labelStyle: TextStyle(fontSize: 12),
// //             contentPadding: EdgeInsets.only(left: 30),
// //             enabledBorder: OutlineInputBorder(
// //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// //               borderRadius: BorderRadius.circular(15),
// //             ),
// //             focusedBorder: OutlineInputBorder(
// //               borderSide: BorderSide(color: Colors.blueGrey.shade100),
// //               borderRadius: BorderRadius.circular(15),
// //             ),
// //           ),
// //         ),
// //         SizedBox(height: 40),
// //         MaterialButton(
// //           onPressed: () {},
// //           height: 45,
// //           color: Colors.deepPurple,
// //           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(10),
// //           ),
// //           child: Text(
// //             "Sign In",
// //             style: TextStyle(color: Colors.white),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // void main() {
// //   runApp(MyApp());
// // }

// ////////////////
// ///
// ///
// ///
// ///
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Login Web',
//       home: LoginPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFf5f5f5),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return ListView(
//             padding: EdgeInsets.symmetric(
//                 horizontal: MediaQuery.of(context).size.width / 8),
//             children: [
//               constraints.maxWidth >= 980 ? Menu() : SizedBox(),
//               Body(),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// class Menu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 30),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               _menuItem(title: 'Home'),
//               _menuItem(title: 'About us'),
//               _menuItem(title: 'Contact us'),
//               _menuItem(title: 'Help'),
//             ],
//           ),
//           Row(
//             children: [
//               _menuItem(title: 'Sign In', isActive: true),
//               _registerButton()
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _menuItem({String title = 'Title Menu', bool isActive = false}) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 30),
//       child: MouseRegion(
//         cursor: SystemMouseCursors.click,
//         child: Column(
//           children: [
//             Text(
//               '$title',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: isActive ? Colors.deepPurple : Colors.grey,
//               ),
//             ),
//             SizedBox(height: 6),
//             isActive
//                 ? Container(
//                     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
//                     decoration: BoxDecoration(
//                       color: Colors.deepPurple,
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   )
//                 : SizedBox()
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _registerButton() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade200,
//             spreadRadius: 10,
//             blurRadius: 12,
//           ),
//         ],
//       ),
//       child: Text(
//         'Register',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Colors.black54,
//         ),
//       ),
//     );
//   }
// }

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth >= 1200) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 width: 360,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Sign In to \nMy Application',
//                       style: TextStyle(
//                         fontSize: 45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 30),
//                     Text(
//                       "If you don't have an account",
//                       style: TextStyle(
//                           color: Colors.black54, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Text(
//                           "You can",
//                           style: TextStyle(
//                               color: Colors.black54,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(width: 15),
//                         GestureDetector(
//                           onTap: () {
//                             print(MediaQuery.of(context).size.width);
//                           },
//                           child: Text(
//                             "Register here!",
//                             style: TextStyle(
//                                 color: Colors.deepPurple,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Image.asset(
//                       'assets/common/illustration-2.png',
//                       width: 300,
//                     ),
//                   ],
//                 ),
//               ),
//               Image.asset(
//                 'assets/common/illustration-1.png',
//                 width: 300,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     vertical: MediaQuery.of(context).size.height / 6),
//                 child: Container(
//                   width: 320,
//                   child: _formLogin(),
//                 ),
//               ),
//             ],
//           );
//         } else if (constraints.maxWidth >= 800) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Expanded(
//                 child: Container(
//                   width: 360,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Sign In to \nMy Application',
//                         style: TextStyle(
//                           fontSize: 45,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 30),
//                       Text(
//                         "If you don't have an account",
//                         style: TextStyle(
//                             color: Colors.black54, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         children: [
//                           Text(
//                             "You can",
//                             style: TextStyle(
//                                 color: Colors.black54,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(width: 15),
//                           GestureDetector(
//                             onTap: () {
//                               print(MediaQuery.of(context).size.width);
//                             },
//                             child: Text(
//                               "Register here!",
//                               style: TextStyle(
//                                   color: Colors.deepPurple,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         'assets/common/illustration-2.png',
//                         width: 300,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       vertical: MediaQuery.of(context).size.height / 6),
//                   child: Container(
//                     width: 320,
//                     child: _formLogin(),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         } else {
//           return Column(
//             children: [
//               Container(
//                 width: 360,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Sign In to \nMy Application',
//                       style: TextStyle(
//                         fontSize: 35,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       "If you don't have an account",
//                       style: TextStyle(
//                           color: Colors.black54, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Text(
//                           "You can",
//                           style: TextStyle(
//                               color: Colors.black54,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(width: 15),
//                         GestureDetector(
//                           onTap: () {
//                             print(MediaQuery.of(context).size.width);
//                           },
//                           child: Text(
//                             "Register here!",
//                             style: TextStyle(
//                                 color: Colors.deepPurple,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Image.asset(
//                       'assets/common/illustration-2.png',
//                       width: 300,
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     vertical: MediaQuery.of(context).size.height / 6),
//                 child: Container(
//                   width: 320,
//                   child: _formLogin(),
//                 ),
//               ),
//             ],
//           );
//         }
//       },
//     );
//   }

//   Widget _formLogin() {
//     return Column(
//       children: [
//         TextField(
//           decoration: InputDecoration(
//             hintText: 'Enter email or Phone number',
//             filled: true,
//             fillColor: Colors.blueGrey[50],
//             labelStyle: TextStyle(fontSize: 12),
//             contentPadding: EdgeInsets.only(left: 30),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.blueGrey.shade100),
//               borderRadius: BorderRadius.circular(15),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.blueGrey.shade100),
//               borderRadius: BorderRadius.circular(15),
//             ),
//           ),
//         ),
//         SizedBox(height: 30),
//         TextField(
//           decoration: InputDecoration(
//             hintText: 'Password',
//             counterText: 'Forgot password?',
//             suffixIcon: Icon(
//               Icons.visibility_off_outlined,
//               color: Colors.grey,
//             ),
//             filled: true,
//             fillColor: Colors.blueGrey[50],
//             labelStyle: TextStyle(fontSize: 12),
//             contentPadding: EdgeInsets.only(left: 30),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.blueGrey.shade100),
//               borderRadius: BorderRadius.circular(15),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.blueGrey.shade100),
//               borderRadius: BorderRadius.circular(15),
//             ),
//           ),
//         ),
//         SizedBox(height: 40),
//         MaterialButton(
//           onPressed: () {},
//           height: 45,
//           color: Colors.deepPurple,
//           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Text(
//             "Sign In",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

/////////////////
///
///
///
///
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Web',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xFF303030,
      ), // i like this background color the most how can i set in themedataof material for this andits alternate in dark theme
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView(
            padding: EdgeInsets.symmetric(
              horizontal: constraints.maxWidth >= 1200 ? 100 : 20,
            ),
            children: [
              constraints.maxWidth >= 980 ? Menu() : SizedBox(),
              Body(),
            ],
          );
        },
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _menuItem(title: 'Home'),
              _menuItem(title: 'About us'),
              _menuItem(title: 'Contact us'),
              _menuItem(title: 'Help'),
            ],
          ),
          Row(
            children: [
              _menuItem(title: 'Sign In', isActive: true),
              _registerButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _menuItem({String title = 'Title Menu', bool isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey,
              ),
            ),
            SizedBox(height: 6),
            isActive
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget _registerButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 10,
            blurRadius: 12,
          ),
        ],
      ),
      child: Text(
        'Register',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In to \nMy Application',
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "If you don't have an account",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "You can",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            print(MediaQuery.of(context).size.width);
                          },
                          child: Text(
                            "Register here!",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/common/illustration-2.png', width: 300),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child:
                    Image.asset('assets/common/illustration-1.png', width: 300),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 6,
                  ),
                  child: Container(width: 320, child: _formLogin()),
                ),
              ),
            ],
          );
        } else if (constraints.maxWidth >= 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In to \nMy Application',
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "If you don't have an account",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "You can",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            print(MediaQuery.of(context).size.width);
                          },
                          child: Text(
                            "Register here!",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/common/illustration-2.png', width: 300),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 6,
                  ),
                  child: Container(width: 320, child: _formLogin()),
                ),
              ),
            ],
          );
        } else {
          return Column(
            children: [
              Container(
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In to \nMy Application',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "If you don't have an account",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "You can",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            print(MediaQuery.of(context).size.width);
                          },
                          child: Text(
                            "Register here!",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/common/illustration-2.png', width: 300),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 6,
                ),
                child: Container(width: 320, child: _formLogin()),
              ),
            ],
          );
        }
      },
    );
  }

  Widget _formLogin() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter email or Phone number',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade100),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade100),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            counterText: 'Forgot password?',
            suffixIcon: Icon(Icons.visibility_off_outlined, color: Colors.grey),
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade100),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade100),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 40),
        MaterialButton(
          onPressed: () {},
          height: 45,
          color: Colors.deepPurple,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text("Sign In", style: TextStyle(color: Colors.white)),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _socialButton(
              iconPath: 'assets/common/facebook.png',
              onPressed: () {},
              backgroundColor: Colors.blue,
            ),
            SizedBox(width: 10),
            _socialButton(
              iconPath: 'assets/common/google.png',
              onPressed: () {},
              backgroundColor: Colors.red,
            ),
            SizedBox(width: 10),
            _socialButton(
              iconPath: 'assets/common/github.png',
              onPressed: () {},
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ],
    );
  }

  Widget _socialButton({
    required String iconPath,
    required VoidCallback onPressed,
    required Color backgroundColor,
  }) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor,
      shape: CircleBorder(),
      padding: EdgeInsets.all(16),
      child: Image.asset(iconPath, color: Colors.white, height: 20, width: 20),
    );
  }
}
