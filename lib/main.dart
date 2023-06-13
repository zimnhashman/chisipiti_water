import 'package:chisipiti_water/screens/login.dart';
import 'package:chisipiti_water/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:chisipiti_water/screens/order.dart';
import 'package:chisipiti_water/screens/orderconfirm.dart';
import 'package:chisipiti_water/screens/orderfinal.dart';
import 'package:chisipiti_water/screens/customer_support.dart';
import 'package:chisipiti_water/screens/account_setup.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Order(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(
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
    )
          ),
        );

  }
  }
