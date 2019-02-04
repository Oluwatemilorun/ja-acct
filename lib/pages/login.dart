import 'package:flutter/material.dart';

import 'package:jaacct/pages/signup.dart';

class Login extends StatefulWidget {
    @override
    _Login createState() => _Login();
}

class _Login extends State<Login> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                // width: ,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/assets/img/background/001.png')
                    )
                ),
                padding: const EdgeInsets.all(30.0),
                child: Column(
                    children: <Widget>[
                        Row(
                            children: <Widget>[
                                Expanded(
                                    child: Column(
                                        children: <Widget>[
                                            Row(children: <Widget>[
                                                Container(
                                                    margin: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                                                    child: Image(
                                                        width: 150,
                                                        image: AssetImage('lib/assets/img/logo.png'),
                                                    )
                                                )
                                            ]),
                                            Row(children: <Widget>[
                                                Expanded(
                                                    child:  Container(
                                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                                                        child: Text(
                                                            'Get started once. \nSign in everywhere!',
                                                            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 28, color: Colors.white),
                                                        ),
                                                    )
                                                ),
                                            ]),
                                            Row(children: <Widget>[
                                                Expanded(
                                                    child: Text(
                                                        'Account holds the keys to everything you\'d ever do on all of Jochebed Apps.',
                                                        style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12, color: Colors.white),
                                                    )
                                                )
                                            ])
                                        ],
                                    ),
                                )
                            ],
                        ),
                        Row(
                            children: <Widget>[
                                Expanded(
                                    child: Container(
                                        decoration: BoxDecoration(color: Colors.white),
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                                        child: Column(
                                            children: <Widget>[
                                                TextField(
                                                    cursorColor: Colors.blue,
                                                    decoration: InputDecoration(
                                                        hintText: 'Username or Email',
                                                        hintStyle: TextStyle(fontSize: 12),
                                                        border: InputBorder.none
                                                    ),
                                                ),
                                                Divider(),
                                                TextField(
                                                    cursorColor: Colors.blue,
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                        hintText: 'Password',
                                                        hintStyle: TextStyle(fontSize: 12),
                                                        border: InputBorder.none
                                                    ),
                                                )
                                            ],
                                        ),
                                    ),
                                )
                            ],
                        ),
                        Row(
                            children: <Widget>[
                                Expanded(child: Text(
                                    'Forgot your password?',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                                    textAlign: TextAlign.right,
                                ))
                            ],
                        ),
                        Row(
                            children: <Widget>[
                                Expanded(child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                                    child: RaisedButton(
                                        child: Text('LOG IN', style: TextStyle(color: Colors.white)),
                                        onPressed: _processLogin,
                                        color: Color.fromRGBO(51, 128, 198, 1),
                                    ))
                                )
                            ],
                        ),
                        Row(
                            children: <Widget>[
                                Expanded(child: FlatButton(
                                    child: Text('Don\' t have an account yet? Create one.', style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(2),
                                    onPressed: _goSignup,
                                ))
                            ],
                        )
                    ],
                )
            ),
        );
    }

    void _goSignup () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
    }

    void _processLogin () {
        // TODO: add login controllers
    }
}