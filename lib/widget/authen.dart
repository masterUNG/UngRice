import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ungrice/widget/register.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  // Field

  // Method
  Widget singInButton() {
    return RaisedButton(
      color: Colors.purple,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget singUpButton() {
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => Register());
            Navigator.of(context).push(route);
      },
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        singInButton(),
        mySizeBox(),
        singUpButton(),
      ],
    );
  }

  Widget mySizeBox() {
    return SizedBox(
      height: 16.0,
      width: 8.0,
    );
  }

  Widget userForm() {
    return Container(
      width: 250.0,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'User :',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget passwordForm() {
    return Container(
      width: 250.0,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password :',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget showAppName() {
    return Text(
      'Ung Rice',
      style: GoogleFonts.liuJianMaoCao(
          textStyle: TextStyle(
        color: Colors.pink.shade900,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 40.0,
      )),
    );
  }

  Widget showLogo() {
    return Container(
      width: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: <Color>[Colors.white, Colors.orange.shade400],
              radius: 1.0,
              center: Alignment(0, -0.2)),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showLogo(),
                showAppName(),
                mySizeBox(),
                userForm(),
                mySizeBox(),
                passwordForm(),
                mySizeBox(),
                showButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
