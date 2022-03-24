import 'package:argon_flutter/data_services/cooperatives.dart';
import 'package:argon_flutter/screens/carte.dart';
import 'package:argon_flutter/screens/cooperatives.dart';
import 'package:argon_flutter/screens/monitorings.dart';
import 'package:argon_flutter/screens/parcelles.dart';
import 'package:argon_flutter/screens/plantings.dart';
import 'package:argon_flutter/screens/productions.dart';
import 'package:flutter/material.dart';

// screens
import 'package:argon_flutter/screens/onboarding.dart';
import 'package:argon_flutter/screens/pro.dart';
import 'package:argon_flutter/screens/home.dart';
import 'package:argon_flutter/screens/producteurs.dart';
import 'package:argon_flutter/screens/register.dart';
import 'package:argon_flutter/screens/articles.dart';
import 'package:argon_flutter/screens/elements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Agromap Traceability',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/onboarding",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/home": (BuildContext context) => new Home(),
          "/cooperatives": (BuildContext context) => new Cooperatives(),
          "/producteurs": (BuildContext context) => new Producteurs(),
          "/parcelles": (BuildContext context) => new Parcelles(),
          "/productions": (BuildContext context) => new Productions(),
          "/plantings": (BuildContext context) => new Plantings(),
          "/monitorings": (BuildContext context) => new Monitorings(),
          "/carte": (BuildContext context) => new Carte(),
          "/elements": (BuildContext context) => new Elements(),
          "/account": (BuildContext context) => new Register(),
          "/pro": (BuildContext context) => new Pro(),
        });
  }
}
