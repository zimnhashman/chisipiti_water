import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: 'ORDER',
                    ),
                    Tab(
                      text: 'HISTORY',
                    ),
                    Tab(
                      text: 'TRACK ORDER',
                    ),
                  ],
                ),

                title: Container(child: Text('Order Water'), ),
                backgroundColor: Colors.blue,
                actions: <Widget>[
                  new IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ],
              ),
              drawer: new Drawer(
                child: new ListView(
                  children: <Widget>[
                    // header
                    new UserAccountsDrawerHeader(
                      accountName: Text('Tendai Machopa'),
                      accountEmail: Text('0773 423 455'),
                      currentAccountPicture: GestureDetector(
                        child: new CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person, color: Colors.white,),
                        ),
                      ),
                      decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage("images/drawer.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),

//                     body
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text('New Order'),
                        leading: Icon(Icons.add_shopping_cart),

                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text('Order History'),
                        leading: Icon(Icons.access_time),

                      ),
                    ),

                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text('Tracking'),
                        leading: Icon(Icons.location_on),

                      ),
                    ),

                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text('Settings'),
                        leading: Icon(Icons.settings),

                      ),
                    ),

                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text('Customer Support'),
                        leading: Icon(Icons.add_call),

                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),

              body: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "CONFIRMATION",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ),

                    Center(
                      //TODO: Make Text variable by collecting data from litre counter
                      child: Text('3, 000 litres',
                      style: TextStyle(color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),),
                    ),

                   //TODO: Get username and phone number from profile details
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 25, 16, 16),
                      child: Text(
                        'Tendai Machopa',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '0773 423 455',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),),
            ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      '47 Alfred Road\nGreendale\nHarare',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),),
                ),

                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 40.0, 20, 20,),
                      child: RaisedButton(
                        padding: EdgeInsets.only(left: 35.0, right: 35.0),
                        color: Colors.blue,
                        child: Text('CONFIRM ORDER', style: TextStyle(
                          color: Colors.white,

                        ),),
                        onPressed: () {
                      //TODO: Send Order Details to server
                        },
                      ),
                    )

    ])
          ),
        ));
  }
}