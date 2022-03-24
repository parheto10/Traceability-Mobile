import 'package:argon_flutter/data_services/plantings_services.dart';
import 'package:argon_flutter/screens/detail_planting.dart';
import 'package:flutter/material.dart';



class SearchPlanting extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.close),
        onPressed: (){
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back_ios),
      onPressed: (){
        Navigator.pop(context);
      },
    );
  }

  FetchPlantings _plantingsList = FetchPlantings();

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: FutureBuilder(
        future: _plantingsList.getPlantingList(query: query),
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
                                  backgroundImage: AssetImage("assets/img/plantings.png"),
                                ),
                              ),
                              SizedBox(width: 5.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${snapshot.data[index].parcelle}", style: TextStyle(color: Colors.blue, fontSize: 11.0, fontWeight: FontWeight.w900),),
                                  SizedBox(height: 2.0,),
                                  Text("Date: ${snapshot.data[index].date}", style: TextStyle(color: Colors.grey),),
                                  Text("Plants reçus : ${snapshot.data[index].plantTotal}", style: TextStyle(color: Colors.black),),
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
                                    builder: (context)=>DetailPlanting(snapshot.data[index]))
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
                  // return ListTile(
                  //   leading: CircleAvatar(
                  //     backgroundColor: Colors.grey,
                  //     foregroundColor: Colors.white,
                  //     backgroundImage: NetworkImage("https://icon-library.com/images/profile-png-icon/profile-png-icon-2.jpg"),
                  //   ),
                  //   title: Text(snapshot.data[index].nom, style: TextStyle(fontWeight: FontWeight.bold),),
                  //   subtitle: Text(snapshot.data[index].code),
                  //   onTap: () {
                  //     Navigator.push(
                  //         context, new MaterialPageRoute(
                  //         builder: (context)=>DetailProducteur(snapshot.data[index]))
                  //     );
                  //   },
                  // );
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
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text("Chercher une Parcelle ..."),
    );
  }
}