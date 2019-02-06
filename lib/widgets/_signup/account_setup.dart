import 'package:flutter/material.dart';

class AccountSetup extends StatefulWidget {
    
    final onStepComplete;

    AccountSetup({
        this.onStepComplete
    });

    @override
    _AccountSetup createState() => _AccountSetup();
}

class _AccountSetup extends State<AccountSetup> {
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
                                            decoration: InputDecoration(
                                                hintText: 'Username',
                                                hintStyle: TextStyle(fontSize: 12),
                                                border: InputBorder.none
                                            ),
                                        ),
                                        Divider(),
                                        TextField(
                                            cursorColor: Colors.blue,
                                            decoration: InputDecoration(
                                                hintText: 'E-mail',
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
        Navigator.pushNamed(context, 'signup/password');
        widget.onStepComplete();
    }
}