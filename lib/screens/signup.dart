import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      'Full Name:',
                      style: TextStyle(color: Colors.white),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 5.0, 5.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Name",
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
                      'Phone Number:',
                      style: TextStyle(color: Colors.white),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 5.0, 5.0),
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                      hintText: "Enter Number ",
                    ),
                  ),
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Address (Harare Only):',
                      style: TextStyle(color: Colors.white),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 5.0, 5.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                      hintText: "Enter Address",
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
                      child: Text('LOGIN', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),),
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
                      color: Colors.blue,
                      child: Text('CREATE ACCOUNT', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),),
                      onPressed: () {},
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text.rich(TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: Colors.white,),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Log In Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                            ),
                          recognizer: TapGestureRecognizer()
                          ..onTap = () {
                              print("YOU WIN");
                          },
                        )
                      ]
                  )
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
