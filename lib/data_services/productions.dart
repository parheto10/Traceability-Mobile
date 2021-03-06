class Productions {
  int id;
  String parcelle;
  String campagne;
  int annee;
  int qteProduct;

  Productions(
      {this.id, this.parcelle, this.campagne, this.annee, this.qteProduct});

  Productions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parcelle = json['parcelle'];
    campagne = json['campagne'];
    annee = json['annee'];
    qteProduct = json['qteProduct'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parcelle'] = this.parcelle;
    data['campagne'] = this.campagne;
    data['annee'] = this.annee;
    data['qteProduct'] = this.qteProduct;
    return data;
  }
}


// class Productions {
//   int id;
//   String parcelle;
//   String campagne;
//   int qteProduct;
//
//   Productions({this.id, this.parcelle, this.campagne, this.qteProduct});
//
//   Productions.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     parcelle = json['parcelle'];
//     campagne = json['campagne'];
//     qteProduct = json['qteProduct'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['parcelle'] = this.parcelle;
//     data['campagne'] = this.campagne;
//     data['qteProduct'] = this.qteProduct;
//     return data;
//   }
// }
