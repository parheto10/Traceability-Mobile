import 'package:argon_flutter/screens/parcelles.dart';
import 'package:argon_flutter/screens/producteurs.dart';
import 'package:flutter/material.dart';

import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/card-horizontal.dart';
import 'package:argon_flutter/widgets/card-small.dart';
import 'package:argon_flutter/widgets/card-square.dart';
import 'package:argon_flutter/widgets/drawer.dart';

class Home extends StatelessWidget {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Dashboard",
          // searchBar: true,
          // transparent: true,
          // categoryOne: "Beauty",
          // categoryTwo: "Fashion",
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        // key: _scaffoldKey,
        drawer: ArgonDrawer(currentPage: "Home"),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("assets/img/screen1.png"),
                    fit: BoxFit.fitWidth)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 80.0),
            child: GridView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.holiday_village,
                        size: 50,
                        color: Colors.white,
                      ),
                      FlatButton(
                        textColor: ArgonColors.text,
                        color: ArgonColors.secondary,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/cooperatives');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                            child: Text("Cooperatives",
                                style: TextStyle(
                                  fontSize: 12.0,
                                    fontWeight: FontWeight.w900,
                                    )),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => Producteurs()),
                      //     );
                      //   },
                      // ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people,
                        size: 50,
                        color: Colors.white,
                      ),
                      FlatButton(
                        textColor: ArgonColors.text,
                        color: ArgonColors.secondary,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/producteurs');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                            child: Text("Producteurs",
                                style: TextStyle(
                                  fontSize: 12.0,
                                    fontWeight: FontWeight.w900,
                                    )),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_pin,
                        size: 50,
                        color: Colors.white,
                      ),
                      FlatButton(
                        textColor: ArgonColors.text,
                        color: ArgonColors.secondary,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/parcelles');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text("Parcelles",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => Parcelles()),
                      //     );
                      //   },
                      // ),
                      // Text(
                      //   'PARCELLES',
                      //   style: TextStyle(
                      //       fontSize: 13.0,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white),
                      // ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.list,
                        size: 50,
                        color: Colors.white,
                      ),
                      FlatButton(
                        textColor: ArgonColors.text,
                        color: ArgonColors.secondary,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/plantings');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text("Plantings",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                      // Text(
                      //   'PLANTINGS',
                      //   style: TextStyle(
                      //       fontSize: 13.0,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white),
                      // ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.checklist,
                        size: 50,
                        color: Colors.white,
                      ),
                      FlatButton(
                        textColor: ArgonColors.text,
                        color: ArgonColors.secondary,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/monitorings');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text("Monitorings",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                      // Text(
                      //   'MONITORINGS',
                      //   style: TextStyle(
                      //       fontSize: 13.0,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white),
                      // ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.category,
                        size: 50,
                        color: Colors.white,
                      ),
                      FlatButton(
                        textColor: ArgonColors.text,
                        color: ArgonColors.secondary,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/productions');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text("Productions",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                      // Text(
                      //   'PRODUCTIONS',
                      //   style: TextStyle(
                      //       fontSize: 13.0,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white),
                      // ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.place_sharp,
                        size: 50,
                        color: Colors.white,
                      ),
                      FlatButton(
                        textColor: ArgonColors.text,
                        color: ArgonColors.secondary,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/carte');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text("Carte",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                      // Text(
                      //   'CARTOGRAPHIE',
                      //   style: TextStyle(
                      //       fontSize: 13.0,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white),
                      // ),
                    ],
                  ),
                ),
                // Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueAccent.shade100),),
                // Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.greenAccent.shade100),),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //separe la page en deux Blocks
                mainAxisSpacing: 5, // espacement entre block horizontal
                crossAxisSpacing: 5, //espacement entre block Vertical
              ),
            ),
          ),
        ));
  }
}
