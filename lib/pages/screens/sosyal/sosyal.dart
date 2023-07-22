import 'package:flutter/material.dart';
import 'package:proje/pages/screens/sosyal/blogdetay.dart';
import 'package:proje/pages/screens/sosyal/etkinlikdetay.dart';
import 'package:proje/themecolors/colors.dart';

class Sosyal extends StatefulWidget {
  const Sosyal({super.key});

  @override
  State<Sosyal> createState() => _SosyalState();
}

class _SosyalState extends State<Sosyal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: OurColor.bgColor,
        appBar: _socailAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                _blogCard("Melih ve Arkadadaslari"),
                const SizedBox(height: 25),
                _etkinlikCard("Frontend Design")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card _blogCard(String text) {
    String displayedTitle =
        text.length > 10 ? "${text.substring(0, 10)} ..." : text;
    return Card(
      elevation: 20.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Blog'da Öne Çıkanlar",
              style: TextStyle(fontSize: 18, fontFamily: "OpenSans"),
            ),
          ),
          Card(
            elevation: 100,
            child: SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlogDetay()));
                          },
                          child: SizedBox(
                            height: 130,
                            width: 130,
                            child: Image.asset("assets/images/facebook.jpg"),
                          ),
                        ),
                        Text(displayedTitle),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card _etkinlikCard(String text) {
    String displayedTitle =
        text.length > 10 ? "${text.substring(0, 12)} ..." : text;
    return Card(
      elevation: 20.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Öne Çıkan Etkinlikler",
              style: TextStyle(fontSize: 18, fontFamily: "OpenSans"),
            ),
          ),
          Card(
            elevation: 100,
            child: SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EtkinlikDetay()));
                          },
                          child: SizedBox(
                            height: 130,
                            width: 130,
                            child: Image.asset("assets/images/facebook.jpg"),
                          ),
                        ),
                        Text(displayedTitle),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _socailAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: OurColor.firstColor,
      title: ListTile(
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
            'Sosyal',
            style: TextStyle(
                color: Colors.white, fontFamily: "OpenSans", fontSize: 20),
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
