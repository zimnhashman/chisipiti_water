import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
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
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 5),
                child: Text(
                  'WELCOME TO CHISIPITI WATER',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0, 15.0, 50.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Water Delivery\nMade Easy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 5.0),
                child: ButtonTheme(
                  height: 50.0,
                  minWidth: 265.0,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'SET UP MY ACCOUNT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Details(),
                      ));
                    },
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "images/backgroundcw.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 60.0 ,20.0 , 50.0),
                  child: Text(
                    'Confirm your details. These will be saved to make all your deliveries.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Full Name:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Name Surname",
                  focusedBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white)),
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone Number:',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "In this format '0771890299",
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
            Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Address(Harare Only):',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Address",
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ButtonTheme(
                  height: 50.0,
                  minWidth: 150.0,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => OnBoard(name: '',)
                      ));
                    },
                  ),
                ),
              ),
            ),
          ])))
    ]);
  }
}

class OnBoard extends StatefulWidget {
  //Values
  final String name;

  OnBoard({Key key, @required this.name}) : super(key: key);



  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
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
            child: Column(
              children: <Widget>[
                Container(
                )
              ],
            ),
          ),
        )
      ]);}}

