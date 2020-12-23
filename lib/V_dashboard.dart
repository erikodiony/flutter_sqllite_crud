import 'package:flutter/material.dart';
import 'package:flutter_sqllite_crud/M_sizeConfig.dart';
import 'M_dataTXT.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(DataTXT.xMainPageTitle),
          actionsIconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
          bottom: PreferredSize(
              child: Container(
                color: Colors.yellow,
                height: 10.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: SizeConfig.screenWidth / 1.25,
                  margin: const EdgeInsets.only(top: 10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
