import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'plantings.dart';

class FetchPlantings{

  var data = [];

  List<Plantings> plantings = [];

  String fetchurl = "http://192.168.1.250:8000/plantinglist/";
  Future<List<Plantings>> getPlantingList({String query}) async {
    var url = Uri.parse(fetchurl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200){
        data = json.decode(response.body);
        plantings = data.map((e) => Plantings.fromJson(e)).toList();
        if (query != null){
          plantings = plantings.where(
                  (element) => element.parcelle.toLowerCase().contains(query.toLowerCase())
          ).toList();
        } else {
          throw Exception("Aucun Resultat");
        }

      } else {
        print('Une Erreur est Survenue Vérifier votre Connexion');
        // throw Exception("Une Erreur est Survenue Venifier votre Connexion");
      }
    } on Exception catch (e) {
      print('erreur: $e');
    }
    return plantings;
  }
}

// List<Plantings> parsePlanting(String responseBody) {
//   var list = json.decode(responseBody) as List<dynamic>;
//   List<Plantings> planting = list.map((e) => Plantings.fromJson(e)).toList();
//   return planting;
// }
//
// Future<List<Plantings>> fetchPlanting() async {
//   var response = await http.get(Uri.parse("http://192.168.1.250:8000/plantinglist/"));
//   // var response = await http.get ("http://192.168.1.250:8000/producteurlist/?format=json");
//   // print(response.body.length);
//   if (response.statusCode == 200) {
//     return compute(parsePlanting, (Utf8Decoder().convert(response.bodyBytes)));
//     // return compute(parseProducteur, response.body);
//     print(response.body.length);
//   } else {
//     throw Exception("Une Erreur est Survenue Venifier votre Connexion");
//   }
// }