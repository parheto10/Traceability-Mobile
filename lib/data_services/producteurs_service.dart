import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'producteurs.dart';

class FetchProducteur{

  var data = [];

  List<Producteur> producteurs = [];

  String fetchurl = "http://192.168.1.250:8000/producteurlist/";
  Future<List<Producteur>> getProducteurList({String query}) async {
    var url = Uri.parse(fetchurl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200){
        data = json.decode(response.body);
        producteurs = data.map((e) => Producteur.fromJson(e)).toList();
        if (query != null){
          producteurs = producteurs.where((element) => element.nom.toLowerCase().contains(query.toLowerCase())).toList();
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
    return producteurs;
  }
}

// List<Producteur> parseProducteur(String responseBody, {String query}) {
//   var list = json.decode(responseBody) as List<dynamic>;
//   List<Producteur> producteur = list.map((e) => Producteur.fromJson(e)).toList();
//   if (query != null){
//     producteur = producteur.where((element) => element.nom.toLowerCase().contains(query.toLowerCase())).toList();
//   } else {
//     throw Exception("Aucun Resultat");
//   }
//   return producteur;
// }
//
// Future<List<Producteur>> fetchProducteur() async {
//   var response = await http.get(Uri.parse("http://192.168.1.250:8000/producteurlist/"));
//   if (response.statusCode == 200) {
//     return compute(parseProducteur, (Utf8Decoder().convert(response.bodyBytes)));
//   } else {
//     throw Exception("Une Erreur est Survenue Venifier votre Connexion");
//   }
// }