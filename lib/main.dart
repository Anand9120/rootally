import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rootally/firebase_options.dart';
import 'package:rootally/views/assessment_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   return ScreenUtilInit(
        designSize: const Size(375, 815), // Base screen size (width x height) you designed in
    minTextAdapt: true,  // Makes font size adapt to screen size
    builder: (context, child) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
    primarySwatch: Colors.blue,
    ),
      home: AssessmentScreen());
  }
   );}
}