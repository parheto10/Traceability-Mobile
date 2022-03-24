class Plantings {
  int id;
  String campagne;
  String parcelle;
  int nbPlantExitant;
  int plantRecus;
  int plantTotal;
  String projet;
  String date;

  Plantings(
      {this.id,
        this.campagne,
        this.parcelle,
        this.nbPlantExitant,
        this.plantRecus,
        this.plantTotal,
        this.projet,
        this.date});

  Plantings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    campagne = json['campagne'];
    parcelle = json['parcelle'];
    nbPlantExitant = json['nb_plant_exitant'];
    plantRecus = json['plant_recus'];
    plantTotal = json['plant_total'];
    projet = json['projet'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['campagne'] = this.campagne;
    data['parcelle'] = this.parcelle;
    data['nb_plant_exitant'] = this.nbPlantExitant;
    data['plant_recus'] = this.plantRecus;
    data['plant_total'] = this.plantTotal;
    data['projet'] = this.projet;
    data['date'] = this.date;
    return data;
  }
}

// class Plantings {
//   int id;
//   Campagne campagne;
//   Parcelle parcelle;
//   int nbPlantExitant;
//   int plantRecus;
//   int plantTotal;
//   Projet projet;
//   String date;
//
//   Plantings(
//       {this.id,
//         this.campagne,
//         this.parcelle,
//         this.nbPlantExitant,
//         this.plantRecus,
//         this.plantTotal,
//         this.projet,
//         this.date});
//
//   Plantings.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     campagne = json['campagne'] != null
//         ? new Campagne.fromJson(json['campagne'])
//         : null;
//     parcelle = json['parcelle'] != null
//         ? new Parcelle.fromJson(json['parcelle'])
//         : null;
//     nbPlantExitant = json['nb_plant_exitant'];
//     plantRecus = json['plant_recus'];
//     plantTotal = json['plant_total'];
//     projet =
//     json['projet'] != null ? new Projet.fromJson(json['projet']) : null;
//     date = json['date'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     if (this.campagne != null) {
//       data['campagne'] = this.campagne.toJson();
//     }
//     if (this.parcelle != null) {
//       data['parcelle'] = this.parcelle.toJson();
//     }
//     data['nb_plant_exitant'] = this.nbPlantExitant;
//     data['plant_recus'] = this.plantRecus;
//     data['plant_total'] = this.plantTotal;
//     if (this.projet != null) {
//       data['projet'] = this.projet.toJson();
//     }
//     data['date'] = this.date;
//     return data;
//   }
// }
//
// class Campagne {
//   int id;
//   String titre;
//   String moisDebut;
//   int anneeDebut;
//   String moisFin;
//   int anneeFin;
//
//   Campagne(
//       {this.id,
//         this.titre,
//         this.moisDebut,
//         this.anneeDebut,
//         this.moisFin,
//         this.anneeFin});
//
//   Campagne.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     titre = json['titre'];
//     moisDebut = json['mois_debut'];
//     anneeDebut = json['annee_debut'];
//     moisFin = json['mois_fin'];
//     anneeFin = json['annee_fin'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['titre'] = this.titre;
//     data['mois_debut'] = this.moisDebut;
//     data['annee_debut'] = this.anneeDebut;
//     data['mois_fin'] = this.moisFin;
//     data['annee_fin'] = this.anneeFin;
//     return data;
//   }
// }
//
// class Parcelle {
//   int id;
//   String code;
//   Producteur producteur;
//   String acquisition;
//   String latitude;
//   String longitude;
//   String culture;
//   String certification;
//   String superficie;
//
//   Parcelle(
//       {this.id,
//         this.code,
//         this.producteur,
//         this.acquisition,
//         this.latitude,
//         this.longitude,
//         this.culture,
//         this.certification,
//         this.superficie});
//
//   Parcelle.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     code = json['code'];
//     producteur = json['producteur'] != null
//         ? new Producteur.fromJson(json['producteur'])
//         : null;
//     acquisition = json['acquisition'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     culture = json['culture'];
//     certification = json['certification'];
//     superficie = json['superficie'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['code'] = this.code;
//     if (this.producteur != null) {
//       data['producteur'] = this.producteur.toJson();
//     }
//     data['acquisition'] = this.acquisition;
//     data['latitude'] = this.latitude;
//     data['longitude'] = this.longitude;
//     data['culture'] = this.culture;
//     data['certification'] = this.certification;
//     data['superficie'] = this.superficie;
//     return data;
//   }
// }
//
// class Producteur {
//   int id;
//   String code;
//   String typeProducteur;
//   String genre;
//   String nom;
//   String dob;
//   String contacts;
//   String localite;
//   int nbEnfant;
//   int nbEpouse;
//   int enfantScolarise;
//   int nbPersonne;
//   int nbParcelle;
//   String image;
//   String typeDocument;
//   String numDocument;
//   Null document;
//   bool isActive;
//   int cooperative;
//   int origine;
//   String sousPrefecture;
//   int section;
//   String sousSection;
//
//   Producteur(
//       {this.id,
//         this.code,
//         this.typeProducteur,
//         this.genre,
//         this.nom,
//         this.dob,
//         this.contacts,
//         this.localite,
//         this.nbEnfant,
//         this.nbEpouse,
//         this.enfantScolarise,
//         this.nbPersonne,
//         this.nbParcelle,
//         this.image,
//         this.typeDocument,
//         this.numDocument,
//         this.document,
//         this.isActive,
//         this.cooperative,
//         this.origine,
//         this.sousPrefecture,
//         this.section,
//         this.sousSection});
//
//   Producteur.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     code = json['code'];
//     typeProducteur = json['type_producteur'];
//     genre = json['genre'];
//     nom = json['nom'];
//     dob = json['dob'];
//     contacts = json['contacts'];
//     localite = json['localite'];
//     nbEnfant = json['nb_enfant'];
//     nbEpouse = json['nb_epouse'];
//     enfantScolarise = json['enfant_scolarise'];
//     nbPersonne = json['nb_personne'];
//     nbParcelle = json['nb_parcelle'];
//     image = json['image'];
//     typeDocument = json['type_document'];
//     numDocument = json['num_document'];
//     document = json['document'];
//     isActive = json['is_active'];
//     cooperative = json['cooperative'];
//     origine = json['origine'];
//     sousPrefecture = json['sous_prefecture'];
//     section = json['section'];
//     sousSection = json['sous_section'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['code'] = this.code;
//     data['type_producteur'] = this.typeProducteur;
//     data['genre'] = this.genre;
//     data['nom'] = this.nom;
//     data['dob'] = this.dob;
//     data['contacts'] = this.contacts;
//     data['localite'] = this.localite;
//     data['nb_enfant'] = this.nbEnfant;
//     data['nb_epouse'] = this.nbEpouse;
//     data['enfant_scolarise'] = this.enfantScolarise;
//     data['nb_personne'] = this.nbPersonne;
//     data['nb_parcelle'] = this.nbParcelle;
//     data['image'] = this.image;
//     data['type_document'] = this.typeDocument;
//     data['num_document'] = this.numDocument;
//     data['document'] = this.document;
//     data['is_active'] = this.isActive;
//     data['cooperative'] = this.cooperative;
//     data['origine'] = this.origine;
//     data['sous_prefecture'] = this.sousPrefecture;
//     data['section'] = this.section;
//     data['sous_section'] = this.sousSection;
//     return data;
//   }
// }
//
// class Projet {
//   int id;
//   String sigle;
//   String titre;
//   String chef;
//   String debut;
//   String fin;
//   String etat;
//   int categorie;
//
//   Projet(
//       {this.id,
//         this.sigle,
//         this.titre,
//         this.chef,
//         this.debut,
//         this.fin,
//         this.etat,
//         this.categorie});
//
//   Projet.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     sigle = json['sigle'];
//     titre = json['titre'];
//     chef = json['chef'];
//     debut = json['debut'];
//     fin = json['fin'];
//     etat = json['etat'];
//     categorie = json['categorie'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['sigle'] = this.sigle;
//     data['titre'] = this.titre;
//     data['chef'] = this.chef;
//     data['debut'] = this.debut;
//     data['fin'] = this.fin;
//     data['etat'] = this.etat;
//     data['categorie'] = this.categorie;
//     return data;
//   }
// }

