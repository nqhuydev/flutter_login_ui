import 'package:flutter/material.dart';
import 'package:flutter_app_design/home.dart';
import 'package:flutter_app_design/logo.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color(0xFF18D191))),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),

            //Button
            Row(
              children: <Widget>[
                //Button Login
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text('Login',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0)),
                      ),
                    ),
                  ),
                ),
                //Button Forgot Password
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        child: Text('Forgot password?',
                            style: TextStyle(
                                color: Color(0xFF18D191), fontSize: 17.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Text('Create a new account',
                        style: TextStyle(
                            color: Color(0xFF18D191),
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),

            //Button Sign in with mail
          ],
        ),
      ),
    );
  }
}
