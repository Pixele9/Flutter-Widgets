import 'package:flutter/material.dart';
import 'package:basic_widgets/src/pages/home_page.dart';
import 'package:basic_widgets/src/pages/avatar_page.dart';
import 'package:basic_widgets/src/pages/alert_page.dart';
import 'package:basic_widgets/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.green[300]),
        debugShowCheckedModeBanner: false,
        title: 'Basic Widgets',
        initialRoute: "/",
        routes: getRoutes(),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage(),
          );
        });
  }
}

        // routes: <String, WidgetBuilder>{
        //   "/": (BuildContext context) => HomePage(),
        //   "avatar": (BuildContext context) => AvatarPage(),
        //   "alert": (BuildContext context) => AlertPage()
        // },