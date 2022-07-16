import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/homepage_controller.dart';
import 'package:provider_example/homescreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomepageController(),)
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
