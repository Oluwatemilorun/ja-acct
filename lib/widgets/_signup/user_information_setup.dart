import 'package:flutter/material.dart';

class InformationSetup extends StatefulWidget {

    final onSignupComplete;

    InformationSetup({
        this.onSignupComplete
    });

    @override
    _InformationSetup createState() => _InformationSetup();
}

class _InformationSetup extends State<InformationSetup> {
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
                                                hintText: 'First name',
                                                hintStyle: TextStyle(fontSize: 12),
                                                border: InputBorder.none
                                            ),
                                        ),
                                        Divider(),
                                        TextField(
                                            cursorColor: Colors.blue,
                                            decoration: InputDecoration(
                                                hintText: 'Last Name',
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
                                child: Text('COMPLETE SIGN UP', style: TextStyle(color: Colors.white)),
                                onPressed: _processStep,
                                color: Color.fromRGBO(51, 128, 198, 1),
                            ))
                        )
                    ])
            ],
        );
    }

    void _processStep () {
        widget.onSignupComplete();
    }
}