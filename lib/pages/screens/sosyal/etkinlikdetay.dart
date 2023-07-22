import 'package:flutter/material.dart';
import 'package:proje/themecolors/colors.dart';

class EtkinlikDetay extends StatelessWidget {
  const EtkinlikDetay({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: OurColor.bgColor,
        appBar: _socailAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                _etkinlikImage(),
                _etkinlikBaslik(),
                _etkinlikIcerik(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _etkinlikIcerik() {
    return const Padding(
      padding: EdgeInsets.only(top: 25.0),
      child: Text(
        "Sayfanın içeriği buraya gelecek",
        style: TextStyle(fontFamily: "OpenSans", fontSize: 18),
      ),
    );
  }

  Text _etkinlikBaslik() {
    return const Text(
      "Buraya Sosyal Sayfasındaki Title Gelecek",
      style: TextStyle(
          fontFamily: "OpenSans", fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Container _etkinlikImage() {
    return Container(
      padding: const EdgeInsets.all(25),
      width: double.infinity,
      height: 250,
      child: Image.asset(fit: BoxFit.fill, "assets/images/twitter.jpg"),
    );
  }

  AppBar _socailAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: OurColor.firstColor,
      title: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: ListTile(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          title: const Center(
            child: Text(
              'Buraya Sosyal Sayfasından Title Gelecek',
              style: TextStyle(
                  color: Colors.white, fontFamily: "OpenSans", fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
