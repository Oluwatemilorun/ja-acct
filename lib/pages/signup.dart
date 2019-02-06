import 'package:flutter/material.dart';

import 'package:jaacct/widgets/_signup/account_setup.dart';
import 'package:jaacct/widgets/_signup/password_setup.dart';
import 'package:jaacct/widgets/_signup/user_information_setup.dart';

class Signup extends StatefulWidget {

    final userWentLive;

    Signup({
        this.userWentLive
    });

    @override
    _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {

    Color  _defaultColor = Color.fromRGBO(51, 128, 198, 1);
    Color _otherColor = Color.fromRGBO(255, 255, 255, 0.6);

    // ColorTween _animateColor = ColorTween(begin: Color.fromRGBO(255, 255, 255, 0.6), end: Color.fromRGBO(255, 255, 255, 0.6));

    BuildContext _stepContext;
    int _currentStep = 1;

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
                                                _currentStep > 1 ?
                                                    MaterialButton(
                                                        height: 32,
                                                        minWidth: 20,
                                                        padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                                                        splashColor: Color.fromRGBO(0, 0, 0, 0.2),
                                                        child: Row(children: <Widget>[
                                                            Icon(IconData(0xe5cb, fontFamily: 'MaterialIcons', matchTextDirection: true)),
                                                            Text('Prev')
                                                        ]),
                                                        onPressed: _prevStep,
                                                    )
                                                :
                                                   Container() ,
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
                                                                child:
                                                                     _currentStep == 1 ?
                                                                        Icon(IconData(0xe7fd, fontFamily: 'MaterialIcons'), color: Colors.black54, size: 36) :
                                                                    _currentStep == 2 ?
                                                                        Icon(IconData(0xe897, fontFamily: 'MaterialIcons'), color: Colors.black54, size: 36) :
                                                                    _currentStep == 3 ?
                                                                        Icon(IconData(0xe87c, fontFamily: 'MaterialIcons'), color: Colors.black54, size: 36) :
                                                                        Icon(IconData(0xe000, fontFamily: 'MaterialIcons'), color: Colors.black54, size: 36)
                                                            )
                                                        ])
                                                    )
                                                 ))
                                            ]),
                                            Row(children: <Widget>[
                                                Expanded(child: Container(
                                                    alignment: Alignment.center,
                                                    child: 
                                                        _currentStep == 1 ?
                                                            Text('Account Setup', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.center) :
                                                        _currentStep == 2 ?
                                                            Text('Setup Password', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.center) :
                                                        _currentStep == 3 ?
                                                            Text('User Information', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.center) :
                                                            Text('Unknown', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.center)
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
                                                                    child: Container(width: 90, height: 2, decoration: BoxDecoration(color: _currentStep >= 2 ? _defaultColor : _otherColor)),
                                                                ),
                                                                Positioned(
                                                                    right: 0,
                                                                    top: 6,
                                                                    child: Container(width: 90, height: 2, decoration: BoxDecoration(color: _currentStep == 3 ? _defaultColor : _otherColor)),
                                                                ),
                                                                Positioned(
                                                                    left: 0,
                                                                    child: Container(width: 15, height: 15, decoration: BoxDecoration(color: _defaultColor, shape: BoxShape.circle)),
                                                                ),
                                                                Positioned(
                                                                    left: 80,
                                                                    // right: 0,
                                                                    child: Container(width: 15, height: 15, decoration: BoxDecoration(color: _currentStep >= 2 ? _defaultColor : _otherColor, shape: BoxShape.circle)),
                                                                ),
                                                                Positioned(
                                                                    right: 0,
                                                                    child: Container(width: 15, height: 15, decoration: BoxDecoration(color: _currentStep == 3 ? _defaultColor : _otherColor, shape: BoxShape.circle)),
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
                        Row(
                            children: <Widget>[
                                Expanded(child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
                                    margin: const EdgeInsets.only(top: 55),
                                    height: 230,
                                    child: Navigator(
                                        initialRoute: 'signup/account',
                                        onGenerateRoute: (RouteSettings settings) {
                                            return PageRouteBuilder(
                                                opaque: false,
                                                settings: settings, 
                                                pageBuilder: (BuildContext context, _, __) {
                                                    switch (settings.name) {
                                                        case 'signup/account':
                                                            return AccountSetup(
                                                                onStepComplete: () {
                                                                     _showPrevBtn('signup/password', context);
                                                                }
                                                            );
                                                            break;
                                                        case 'signup/password':
                                                            return PasswordSetup(
                                                                onStepComplete: () {
                                                                     _showPrevBtn('signup/user', context);
                                                                }
                                                            );
                                                            break;
                                                        case 'signup/user':
                                                            return InformationSetup(
                                                                onSignupComplete: () {
                                                                    _showPrevBtn('signup/user', context);
                                                                }
                                                            );
                                                            break;
                                                        default:
                                                            throw Exception('Invalid route: ${settings.name}');
                                                    }
                                                },
                                                transitionsBuilder: (___, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
                                                    return FadeTransition(
                                                        opacity: animation,
                                                        child: SlideTransition(
                                                            position: Tween<Offset>(begin: Offset(3, 0), end: Offset(-0, 0)).animate(animation),
                                                            child: SlideTransition(
                                                                position: Tween<Offset>(begin: Offset(-0, 0), end: Offset(-3, 0)).animate(secondaryAnimation),
                                                                child: child,
                                                            )
                                                        )
                                                    );
                                                },
                                                transitionDuration: Duration(milliseconds: 500)
                                            );
                                        }
                                    )
                                ))
                            ]
                        )
                    ],
                )
            ),
        );
    }

    void _prevStep () {
        Navigator.of(_stepContext).pop();

        setState(() {
            _currentStep -= 1;
        });
    }

    void _showPrevBtn (String path, BuildContext context) {
        _stepContext = context;
            
        switch (path) {
            case 'signup/account':
                setState(() {
                    _currentStep = 1;
                });
                break;
            case 'signup/password':
                setState(() {
                    _currentStep = 2;
                });
                break;
            case 'signup/user':
                setState(() {
                    _currentStep = 3;
                });
                break;
            default:
                throw Exception('invalid step $_currentStep');
        }
    }

    void _goLogin () {
        Navigator.pop(context);
    }
}