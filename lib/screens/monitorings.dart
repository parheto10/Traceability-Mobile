import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/drawer.dart';

class Monitorings extends StatelessWidget {


  List prod = [
    "Ghost",
    "Hesh",
    "Logan",
    "Rork",
    "Merrick",
    "Ajax",
    "Soap",
    "Price",
    "Yuri",
    "Sandman",
  ];

  List section = [
    "N'guessanKro",
    "Kako",
    "DominiqueKro",
    "Gbagbam",
    "Satamassokoura",
    "Gréguibré",
    "Béréby",
    "Miensah",
    "Sipilou",
    "Commansankro",
  ];

  List nb_parcelle = [
    "Nb parcelles : 2",
    "Nb parcelles :  3",
    "Nb parcelles :  1",
    "Nb parcelles :  3",
    "Nb parcelles :  4",
    "Nb parcelles :  2",
    "Nb parcelles :  1",
    "Nb parcelles :  1",
    "Nb parcelles :  1",
    "Nb parcelles :  2",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: Navbar(
          title: "Monitorings",
          transparent: false,
          searchBar: true,
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: ArgonDrawer(currentPage: "Monitorings"),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage("assets/img/onboard-background.png"),
                  fit: BoxFit.fitWidth)),
        // color: Colors.blue[200],
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => Container(
            width: MediaQuery.of(context).size.width,
            // const EdgeInsets.only(left: 16.0, right: 16.0, top: 3.0),
            padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.1),
            // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 55.0,
                          height: 55.0,
                          color: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            foregroundColor: Colors.white,
                            backgroundImage: NetworkImage("https://icon-library.com/images/profile-png-icon/profile-png-icon-2.jpg"),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(prod[index], style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5.0,),
                            Text(section[index], style: TextStyle(color: Colors.grey),),
                            Text(nb_parcelle[index], style: TextStyle(color: Colors.black),),
                          ],
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: FlatButton(
                        onPressed: ()=>{},
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text('Détails', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // itemCount: 10,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
