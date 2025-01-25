import 'package:drosak/src/core/resources/routes_mananger.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.routesName});
  final String routesName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RoutesManager.routes,
      initialRoute: routesName,
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
