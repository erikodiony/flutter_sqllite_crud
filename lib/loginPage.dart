import 'package:flutter/material.dart';
import 'data.dart';
import 'w_loginPage.dart';
import 'sizeConfig.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //initSizeConfig
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(ZDATA.xMainPageTitle),
          actionsIconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
          bottom: PreferredSize(
              child: Container(
                color: Colors.yellow,
                height: 4.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IMGtitle(),
              LBLtitle(),
              Container(
                  width: SizeConfig.screenWidth / 1.25,
                  margin: const EdgeInsets.only(top: 10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[FRMlogin(), BTNlogin()],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
