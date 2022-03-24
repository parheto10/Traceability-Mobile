import 'dart:convert';
import 'package:argon_flutter/data_services/parcelles.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class FetchParcelle{

  var data = [];

  List<Parcelles> parcelles = [];

  String fetchurl = "http://192.168.1.250:8000/parcellelist/";
  Future<List<Parcelles>> getParcelleList({String query}) async {
    var url = Uri.parse(fetchurl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200){
        data = json.decode(response.body);
        parcelles = data.map((e) => Parcelles.fromJson(e)).toList();
        if (query != null){
          parcelles = parcelles.where(
                  (element) => element.code.toLowerCase().contains(query.toLowerCase())
          ).toList();
        } else {
          throw Exception("Aucun Resultat");
        }

      } else {
        print('Une Erreur est Survenue Venifier votre Connexion');
        // throw Exception("Une Erreur est Survenue Venifier votre Connexion");
      }
    } on Exception catch (e) {
      print('erreur: $e');
    }
    return parcelles;
  }
}

// List<Parcelles> parseParcelle(String responseBody) {
//   var list = json.decode(responseBody) as List<dynamic>;
//   List<Parcelles> parcelle = list.map((e) => Parcelles.fromJson(e)).toList();
//   return parcelle;
// }
//
// Future<List<Parcelles>> fetchParcelle() async {
//   // var response = await http.get(Uri.parse("http://192.168.1.250:8000/api/planting/v1/"));
//   var response = await http.get(Uri.parse("http://192.168.1.250:8000/parcellelist/"));
//   // var response = await http.get ("http://192.168.1.250:8000/producteurlist/?format=json");
//   // print(response.body.length);
//   if (response.statusCode == 200) {
//     return compute(parseParcelle, (Utf8Decoder().convert(response.bodyBytes)));
//     // return compute(parseProducteur, response.body);
//     print(response.body.length);
//   } else {
//     throw Exception("Une Erreur est Survenue Venifier votre Connexion");
//   }
// }