import 'package:flutter/material.dart';
import 'package:saes/principal.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
     _mockCheckForSession().then(
        (status) {
            _navigateToLogin();
        });
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }



  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => Principal()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    //img
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Shimmer.fromColors(
              period: Duration(milliseconds: 5000),
              baseColor: Colors.green,
              highlightColor: Colors.indigo,
              child: Container(
                child: Center(
                  child: Text(
                    "WELCOME!",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      shadows: <Shadow>[
                        Shadow(
                          blurRadius: 18.0,
                          color: Colors.black87,
                          offset: Offset.fromDirection(120, 12)
                        )
                      ]
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}

class LoginScreen {
}