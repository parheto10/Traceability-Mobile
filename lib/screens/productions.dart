import 'dart:ui';
import 'package:argon_flutter/data_services/productions_service.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/drawer.dart';

// Producteurs Service
import 'package:argon_flutter/data_services/producteurs_service.dart';

import 'detail_production.dart';


class Productions extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Navbar(
        title: "Productions",
        transparent: false,
        searchBar: true,
      ),
      backgroundColor: ArgonColors.bgColorScreen,
      drawer: ArgonDrawer(currentPage: "Productions"),
      body: Container(
        color: Colors.blue[200],
        child: FutureBuilder(
          future: fetchProduction(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    width: MediaQuery.of(context).size.width;
                    padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0);
                    return Card(
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50.0,
                                  height: 45.0,
                                  color: Colors.white,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.white,
                                    backgroundImage: AssetImage("assets/img/cacao.jpg"),
                                  ),
                                ),
                                SizedBox(width: 5.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(snapshot.data[index].parcelle, style: TextStyle(color: Colors.blue, fontSize: 13.0, fontWeight: FontWeight.w900),),
                                    SizedBox(height: 2.0,),
                                    Text("Campagne: ${snapshot.data[index].campagne} - ${snapshot.data[index].annee}", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                                    Text("QTE : ${snapshot.data[index].qteProduct} KG", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context, new MaterialPageRoute(
                                      builder: (context)=>DetailProduction(snapshot.data[index]))
                                  );
                                },
                                // minWidth: 40.0,
                                // height: 25,
                                color: Colors.green[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text('Détails', style: TextStyle(color: Colors.white, fontSize: 12.0),),
                                // child: Icon(Icons.chevron_right_sharp,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              );
            } else if (snapshot.hasError){
              return Container(
                child: Center(child: Text('Aucune Donner Trouver, Vérifier votre Connexion Internet'),),
              );
            } else {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

          },
        ),
      ),
    );
  }
}
