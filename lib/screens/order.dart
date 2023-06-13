import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Order extends StatefulWidget {

  @override
  _OrderState createState() => _OrderState();
}


class _OrderState extends State<Order> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
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

                  title: Container(child: Text('Order Water'),),
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
                            image: new DecorationImage(
                                image: new AssetImage("images/drawer.jpg"),
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
                            "      HOW MUCH WATER\nDO YOU WANT DELIVERED?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(30.0),

                        child: Row(
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () {

                              },
                              elevation: 2.0,
                              fillColor: Colors.grey[300],
                              child: Icon(
                                Icons.remove,
                                color: Colors.blue,
                                size: 50.0,
                              ),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                            ),

                            Column(
                              children: [
                                //TODO Make Number change, counter
                                Text('', style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 140.0,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "THOUSAND LITRES", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),),
                                )
                              ],
                            ),

                            Row(
                              children: <Widget>[
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {

                                    });
                                  },
                                  elevation: 2.0,
                                  fillColor: Colors.grey[300],
                                  highlightColor: Colors.blue,

                                  child: Icon(
                                    Icons.add,
                                    color: Colors.blue,
                                    size: 50.0,
                                  ),
                                  padding: EdgeInsets.all(15.0),
                                  shape: CircleBorder(),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: RaisedButton(
                          padding: EdgeInsets.only(left: 35.0, right: 35.0),
                          color: Colors.blue,
                          child: Text('PLACE ORDER', style: TextStyle(
                            color: Colors.white,

                          ),),
                          onPressed: () {

                          },
                        ),
                      )
                    ])
            ),
          ));
    }
  }