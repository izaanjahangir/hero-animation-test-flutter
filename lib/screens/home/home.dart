import 'package:flutter/material.dart';
import 'package:testingHero/screens/details/details.dart';

List<Map> data = [
  {"image": "./assets/images/thor.jpeg", "tag": "thor"},
  {"image": "./assets/images/ironman.jpeg", "tag": "iron-man"},
  {"image": "./assets/images/captain-america.jpeg", "tag": "captain-america"},
  {"image": "./assets/images/doctor-strange.jpeg", "tag": "doctor-strange"},
  {"image": "./assets/images/hulk.jpeg", "tag": "hulk"},
  {"image": "./assets/images/wanda.jpeg", "tag": "wanda"},
  {"image": "./assets/images/kratos.jpeg", "tag": "kratos"},
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    navigate(selectedItem) {
      // Navigator.pushNamed(context, "/details");

      Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Details(itemSelected: selectedItem),
            transitionDuration: Duration(seconds: 1),
          ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            width: double.infinity,
            child: GridView.count(
                crossAxisCount: 2,
                children: data.map((item) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: GestureDetector(
                        onTap: () {
                          navigate(item);
                        },
                        child: Hero(
                          tag: item["tag"],
                          child: Image.asset(
                            item["image"],
                            fit: BoxFit.cover,
                            width: width * 0.45,
                            height: width * 0.45,
                          ),
                        )),
                  );
                }).toList()),
          ),
        ),
      ),
    );
  }
}
