import 'dart:ui';
import 'package:argon_flutter/widgets/parcelle_search.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/drawer.dart';
import 'package:argon_flutter/data_services/parcelles_services.dart';

import 'detail_parcelle.dart';

class Parcelles extends StatelessWidget {

  FetchParcelle _parcelleList = FetchParcelle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        title: Text('Parcelles'),
        actions: [
          IconButton(icon: Icon(Icons.search_sharp),
            onPressed: (){
              showSearch(context: context, delegate: SearchParcelle());
            },
          )
        ],
      ),
        // appBar: Navbar(
        //   title: "Parcelles",
        //   transparent: false,
        //   searchBar: true,
        // ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: ArgonDrawer(currentPage: "Parcelles"),
        body: Container(
        color: Colors.blue[200],
        child: FutureBuilder(
          future: _parcelleList.getParcelleList(),
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
                                    backgroundImage: AssetImage("assets/img/parcelle.png"),
                                  ),
                                ),
                                SizedBox(width: 5.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(snapshot.data[index].code, style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.w900),),
                                    SizedBox(height: 2.0,),
                                    Text("${snapshot.data[index].producteur.nom}", style: TextStyle(color: Colors.grey, fontSize: 11.0, fontWeight: FontWeight.w900),),
                                    Text("${snapshot.data[index].superficie} Ha", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
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
                                      builder: (context)=>DetailParcelle(snapshot.data[index]))
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
