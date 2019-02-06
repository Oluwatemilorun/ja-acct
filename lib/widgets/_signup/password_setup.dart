import 'package:flutter/material.dart';

class PasswordSetup extends StatefulWidget {

    final onStepComplete;

    PasswordSetup({
        this.onStepComplete
    });

    @override
    _PasswordSetup createState() => _PasswordSetup();
}

class _PasswordSetup extends State<PasswordSetup> {
    @override
    Widget build(BuildContext context) {
        return Column(
            children: <Widget>[
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
                                            obscureText: true,
                                            decoration: InputDecoration(
                                                hintText: 'Password',
                                                hintStyle: TextStyle(fontSize: 12),
                                                border: InputBorder.none
                                            ),
                                        ),
                                        Divider(),
                                        TextField(
                                            cursorColor: Colors.blue,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                                hintText: 'Re-type password',
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
                        Expanded(child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            child: RaisedButton(
                                child: Text('NEXT', style: TextStyle(color: Colors.white)),
                                onPressed: _processStep,
                                color: Color.fromRGBO(51, 128, 198, 1),
                            ))
                        )
                    ])
            ],
        );
    }

    void _processStep () {
        Navigator.pushNamed(context, 'signup/user');
        widget.onStepComplete();
    }
}