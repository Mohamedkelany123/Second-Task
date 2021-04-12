import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.blueGrey,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContactCard(name: 'Mohamed Zahran', mail: 'moh@yahoo.com', phone: '01094838228', boss1: 'Not',boss2:'Boss' , url: 'https://www.uni-regensburg.de/Fakultaeten/phil_Fak_II/Psychologie/Psy_II/beautycheck/english/durchschnittsgesichter/m(01-32)_gr.jpg',),
                  ContactCard(name: 'Omar Ahmed', mail: 'Oz@yahoo.com', phone: '01094567709', boss1: '',boss2: 'Boss',url: 'https://www.faceplusplus.com/demo/images/demo-pic35.jpg',),
                  ContactCard(name: 'Malak Mohamed',mail: 'Malak@yahoo.com', phone: '01056870223', boss1: 'Maybe',boss2:'Boss',url: 'https://www.goldennumber.net/wp-content/uploads/2013/08/florence-colgate-england-most-beautiful-face.jpg',),
                ],
              ),
            ),
          ),
        ),
    );
  }
}

class ContactCard extends StatelessWidget {
  String name, mail, phone, boss1, boss2, url;

  ContactCard({this.name, this.mail, this.phone, this.boss1,this.boss2,this.url,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      margin: EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
               radius: 30,
               backgroundImage: NetworkImage(this.url,),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              Row(
                children: [
                  Icon(Icons.mail,),
                  Text(
                    this.mail,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.white,),
                    Text(
                      this.phone,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red,),
                      Icon(Icons.favorite, color: Colors.red,),
                      Icon(Icons.favorite, color: Colors.red,),
                      Padding(padding: EdgeInsets.only(left: 20,)),
                      Icon(Icons.person_pin_circle_rounded, color: Colors.white,),
                      Padding(padding: EdgeInsets.only(left:5,)),
                      Container(
                        height: 43,
                      width: 56,

                      child: Column(

                        children: [
                          Row(children:[Text(this.boss1, style: TextStyle(fontWeight: FontWeight.bold,), ),],),
                          Row(children:[Text(this.boss2, style: TextStyle(fontWeight: FontWeight.bold,), ),],),
                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 25,)),
                      Column(
                        children: [Icon(Icons.delete, color: Colors.white, size: 40,),],
                      ),
                      /*Icon(Icons.favorite, color: Colors.red,),
                      Icon(Icons.favorite, color: Colors.red,),
                      Icon(Icons.favorite, color: Colors.red,),
                      Padding(padding: EdgeInsets.only(left: 15,)),
                      Icon(Icons.person_pin_circle_rounded, color: Colors.white,),
                      Text(this.boss, style: TextStyle(fontWeight: FontWeight.bold,), ),
                      Padding(padding: EdgeInsets.only(left: 17,)),
                      Icon(Icons.delete, color: Colors.white, size: 40,),*/
                    ],
                  ),

                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
