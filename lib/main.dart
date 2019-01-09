import 'package:flutter/material.dart';
import 'package:flutter_app_design/login.dart';
import 'package:flutter_app_design/logo.dart';

void main() => runApp(AppDesign());

class AppDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Design",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', brightness: Brightness.dark),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo
            LogoStack(),
            //Name
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: Text('GiaAn Bee', style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            //Button Sign in with mail
            new Row(
              children: <Widget>[
                _buttonSignIn(
                    color: Color(0xFF18D191),
                    name: 'Sign In With Email',
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    action: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    })
              ],
            ),
            //Sign In With Facebook and Google
            new Row(
              children: <Widget>[
                _buttonSignIn(
                    color: Color(0xFF4364A1),
                    name: 'Facebook',
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0)),
                _buttonSignIn(
                    color: Color(0xFFDF513B),
                    name: 'Google',
                    padding: const EdgeInsets.only(
                        left: 5.0, right: 20.0, top: 10.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonSignIn({Color color, String name, EdgeInsets padding, action}) {
    return Expanded(
      child: Padding(
        padding: padding,
        child: GestureDetector(
          onTap: action,
          child: Container(
            alignment: Alignment.center,
            height: 70.0,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10.0)),
            child: Text(name,
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ),
        ),
      ),
    );
  }
}
