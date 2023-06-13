import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final mobileno = TextEditingController();
  final pin = TextEditingController();

  void dispose() {
    //Clean up controller when widget is disposed
    mobileno.dispose();
    pin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Image.asset(
          "images/backgroundcw.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(20.0),
                    alignment: Alignment.center,
                    child: Image.asset('images/whitelogo.png')),
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone Number:',
                      style: TextStyle(color: Colors.white),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 5.0, 5.0),
                  child: TextFormField(
                    controller: mobileno,
                    maxLength: 10,
                    keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "In this format '0771890299'",
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'PIN:',
                      style: TextStyle(color: Colors.white),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 5.0, 5.0),
                  child: TextFormField(
                    controller: pin,
                    keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                    maxLength: 4,
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter PIN ",
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 20.0),
                  child: ButtonTheme(
                    height: 50.0,
                    minWidth: 265.0,
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 30.0),
                  child: ButtonTheme(
                    height: 50.0,
                    minWidth: 265.0,
                    child: RaisedButton(
                      color: Colors.blueGrey,
                      child: Text(
                        'RESET PIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text.rich(TextSpan(
                      text: 'No Account? ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Create One',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline))
                      ])),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
