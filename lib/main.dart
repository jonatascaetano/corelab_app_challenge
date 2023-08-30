import 'package:corelab_app_challenge/layers/presentation/ui/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'layers/presentation/ui/widgets/result_found.widget.dart';
import 'layers/presentation/ui/widgets/result_not_found_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff00B4CC),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
