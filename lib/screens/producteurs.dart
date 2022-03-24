import 'dart:ui';
import 'package:argon_flutter/widgets/producteur_search.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/drawer.dart';

// Producteurs Service
import 'package:argon_flutter/data_services/producteurs_service.dart';

import 'detail_prod.dart';


class Producteurs extends StatelessWidget {

  FetchProducteur _producteurList = FetchProducteur();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Producteurs'),
          actions: [
            IconButton(icon: Icon(Icons.search_sharp),
              onPressed: (){
                showSearch(context: context, delegate: SearchProducteur());
              },
            )
          ],
        ),
        // appBar: Navbar(
        //   title: "Producteurs",
        // ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: ArgonDrawer(currentPage: "Producteurs"),
        body: Container(
        color: Colors.blue[200],
        child: FutureBuilder(
          future: _producteurList.getProducteurList(),
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
                        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
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
                                    backgroundImage: AssetImage("assets/img/producteur.png"),
                                  ),
                                ),
                                SizedBox(width: 5.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${snapshot.data[index].code}", style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                                    SizedBox(height: 2.0,),
                                    Text("${snapshot.data[index].nom}", style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w900),),
                                    Text("${snapshot.data[index].cooperative}", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context, new MaterialPageRoute(
                                      builder: (context)=>DetailProducteur(snapshot.data[index]))
                                  );
                                },
                                color: Colors.green[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text('Détails', style: TextStyle(color: Colors.white, fontSize: 14.0),),
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