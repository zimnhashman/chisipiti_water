import 'package:flutter/material.dart';

 class Inquiry extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Customer Support'),
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
       body: ListView(
         children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.message,
            size: 140.0,
            color: Colors.green,),
          ),
           Center(
             child: Padding(
               padding: const EdgeInsets.fromLTRB(30.0, 18, 18, 18),
               child: Text("If you have an inquiry, you can enter it below and someone "
                   "will respond to you as soon as possible.",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.grey[700],
               ),),
             ),
           ),

           Padding(
             padding: const EdgeInsets.all(18.0),
             child: Container(
               alignment: Alignment.centerLeft,
               child: Text('Enter your Comments',
                 style: TextStyle(
                 color: Colors.grey,
               ),),
             ),
           ),

           Padding(
             padding: EdgeInsets.fromLTRB(10.0, 0, 5.0, 30.0),
             child: TextFormField(
               maxLength: 300,
               style: TextStyle(color: Colors.black),
               decoration: InputDecoration(
                 focusedBorder: new UnderlineInputBorder(
                     borderSide: new BorderSide(color: Colors.blue)),
                 enabledBorder: new UnderlineInputBorder(
                     borderSide: new BorderSide(color: Colors.blue)),
               ),
             ),
           ),
           Spacer(),
           RaisedButton(
             padding: EdgeInsetsDirectional.only(start: 5.0, end: 5.0, top: 12.0, bottom: 12.0),
             color: Colors.blue,
             child: Text('SEND INQUIRY',
               style: TextStyle(
               color: Colors.white,
             ),),
             onPressed: () {},
           ),

         ],
       ),
       );
   }
 }
 