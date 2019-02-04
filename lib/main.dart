import 'package:flutter/material.dart';

import 'package:jaacct/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Jochebed Apps',
            home: Login(),
        );
    }
}
