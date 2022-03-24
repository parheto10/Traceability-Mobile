class Producteur {
  int id;
  String code;
  String origine;
  String sousPrefecture;
  String genre;
  String typeProducteur;
  String nom;
  String dob;
  String contacts;
  String localite;
  int nbEnfant;
  int nbEpouse;
  String section;
  String sousSection;
  int nbParcelle;
  String image;
  String typeDocument;
  String numDocument;
  String document;
  String cooperative;

  Producteur(
      {this.id,
        this.code,
        this.origine,
        this.sousPrefecture,
        this.genre,
        this.typeProducteur,
        this.nom,
        this.dob,
        this.contacts,
        this.localite,
        this.nbEnfant,
        this.nbEpouse,
        this.section,
        this.sousSection,
        this.nbParcelle,
        this.image,
        this.typeDocument,
        this.numDocument,
        this.document,
        this.cooperative});

  Producteur.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    origine = json['origine'];
    sousPrefecture = json['sous_prefecture'];
    genre = json['genre'];
    typeProducteur = json['type_producteur'];
    nom = json['nom'];
    dob = json['dob'];
    contacts = json['contacts'];
    localite = json['localite'];
    nbEnfant = json['nb_enfant'];
    nbEpouse = json['nb_epouse'];
    section = json['section'];
    sousSection = json['sous_section'];
    nbParcelle = json['nb_parcelle'];
    image = json['image'];
    typeDocument = json['type_document'];
    numDocument = json['num_document'];
    document = json['document'];
    cooperative = json['cooperative'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['origine'] = this.origine;
    data['sous_prefecture'] = this.sousPrefecture;
    data['genre'] = this.genre;
    data['type_producteur'] = this.typeProducteur;
    data['nom'] = this.nom;
    data['dob'] = this.dob;
    data['contacts'] = this.contacts;
    data['localite'] = this.localite;
    data['nb_enfant'] = this.nbEnfant;
    data['nb_epouse'] = this.nbEpouse;
    data['section'] = this.section;
    data['sous_section'] = this.sousSection;
    data['nb_parcelle'] = this.nbParcelle;
    data['image'] = this.image;
    data['type_document'] = this.typeDocument;
    data['num_document'] = this.numDocument;
    data['document'] = this.document;
    data['cooperative'] = this.cooperative;
    return data;
  }
}
