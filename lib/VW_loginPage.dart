import 'package:flutter/material.dart';
import 'M_dataTXT.dart';
import 'M_sizeConfig.dart';
import 'C_DataDB.dart';

class IMGtitle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      alignment: Alignment.center,
      height: SizeConfig.screenHeight / 4,
      width: SizeConfig.screenWidth / 2,
      decoration: BoxDecoration(
        color: Colors.white10,
        image: DecorationImage(
          image: AssetImage(DataTXT.aImg_1),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class FRMlogin extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
      height: SizeConfig.screenHeight / 4,
      child: Column(children: <Widget>[
        INPusername(),
        INPpassword(),
        BTXforgotPassword()
      ]),
    );
  }
}

class LBLtitle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text(
      DataTXT.xLogin_1,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
    );
  }
}

class INPusername extends StatelessWidget {
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: DataTXT.xLogin_3,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class INPpassword extends StatelessWidget {
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: DataTXT.xLogin_4,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class BTXforgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Align(
          alignment: Alignment.bottomRight,
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text(
                  DataTXT.xLogin_2,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class BTNlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        label: Text(DataTXT.xLogin_5),
        icon: Icon(Icons.login),
        onPressed: () {
          CtlDB _ctlDB = new CtlDB();
          _ctlDB.initPrdDb();
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Dashboard()),
          // );
        });
  }
}
