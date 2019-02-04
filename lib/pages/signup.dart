import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
    @override
    _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {

    Color _defaultColor = Color.fromRGBO(51, 128, 198, 1);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                // padding: const EdgeInsets.all(30.0),
                 decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/assets/img/background/001.png')
                    )
                ),
                child: Column(
                    children: <Widget>[
                        Row(
                            children: <Widget>[
                                Expanded(child: Container(
                                    height: 285,
                                    padding: EdgeInsets.fromLTRB(7, 40, 7, 5),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 0.6)
                                    ),
                                    child: Column(
                                        children: <Widget>[
                                            Row(children: <Widget>[
                                                MaterialButton(
                                                    height: 32,
                                                    minWidth: 20,
                                                    padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                                                    splashColor: Color.fromRGBO(0, 0, 0, 0.2),
                                                    child: Row(children: <Widget>[
                                                        Icon(IconData(0xe5cb, fontFamily: 'MaterialIcons', matchTextDirection: true)),
                                                        Text('Prev')
                                                    ]),
                                                    onPressed: () => '',
                                                ),
                                                Spacer(),
                                                MaterialButton(
                                                    height: 32,
                                                    minWidth: 20,
                                                    elevation: 3.0,
                                                    padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 15.0),
                                                    color: _defaultColor,
                                                    child: Text('LOG IN', style: TextStyle(color: Colors.white)),
                                                    onPressed: _goLogin,
                                                )
                                            ]),
                                            Row(children: <Widget>[
                                                Expanded(child: Container(
                                                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
                                                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        width: 115,
                                                        child: Row(children: <Widget>[
                                                            Container(
                                                                height: 50,
                                                                width: 50,
                                                                padding: EdgeInsets.all(7),
                                                                margin: EdgeInsets.all(3),
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape.circle,
                                                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                                                ),
                                                                child: Image(image: AssetImage('lib/assets/img/logo.png'), width: 30)
                                                            ),
                                                            Container(
                                                                height: 50,
                                                                width: 50,
                                                                margin: EdgeInsets.all(3),
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape.circle,
                                                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                                                ),
                                                                child: Icon(IconData(0xe7fd, fontFamily: 'MaterialIcons'), color: Colors.black54, size: 36,)
                                                            )
                                                        ])
                                                    )
                                                 ))
                                            ]),
                                            Row(children: <Widget>[
                                                Expanded(child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text('User Information', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.center),
                                                ))
                                            ]),
                                            Row(children: <Widget>[
                                                Expanded(child: Center(
                                                    child:Container(
                                                        width: 180,
                                                        height: 16,
                                                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                                                        child: Stack(
                                                            children: <Widget>[
                                                                Positioned(
                                                                    left: 0,
                                                                    top: 6,
                                                                    child: Container(width: 90, height: 2, decoration: BoxDecoration(color: _defaultColor)),
                                                                ),
                                                                Positioned(
                                                                    right: 0,
                                                                    top: 6,
                                                                    child: Container(width: 90, height: 2, decoration: BoxDecoration(color: _defaultColor)),
                                                                ),
                                                                Positioned(
                                                                    left: 0,
                                                                    child: Container(width: 15, height: 15, decoration: BoxDecoration(color: _defaultColor, shape: BoxShape.circle)),
                                                                ),
                                                                Positioned(
                                                                    left: 80,
                                                                    // right: 0,
                                                                    child: Container(width: 15, height: 15, decoration: BoxDecoration(color: _defaultColor, shape: BoxShape.circle)),
                                                                ),
                                                                Positioned(
                                                                    right: 0,
                                                                    child: Container(width: 15, height: 15, decoration: BoxDecoration(color: _defaultColor, shape: BoxShape.circle)),
                                                                ),
                                                            ],
                                                        ),
                                                    )
                                                ))
                                            ])
                                        ],
                                    ),
                                ))
                            ],
                        ),
                    ],
                )
            ),
        );
    }

    void _goLogin () {
        Navigator.pop(context);
    }
}