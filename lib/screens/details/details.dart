import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final Map itemSelected;

  Details({this.itemSelected});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Hero(
                    tag: itemSelected["tag"],
                    child: Image.asset(
                      itemSelected["image"],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
