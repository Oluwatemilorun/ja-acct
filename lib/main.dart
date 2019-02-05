import 'package:flutter/material.dart';

import 'package:jaacct/pages/home.dart';
import 'package:jaacct/pages/login.dart';
import 'package:jaacct/pages/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
    @override
    _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {

    bool _userLive = false;

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Jochebed Apps',
            initialRoute: '/',
            routes: {
                '/': (BuildContext context) => _userLive ? Home() : Login(),
                '/login': (BuildContext context) => Login(),
                '/signup': (BuildContext context) => Signup()
            },
            // home: Login(),
        );
    }
}
