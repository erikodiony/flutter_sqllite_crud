class Auth {
  int _id;
  String _usr;
  String _pwd;

  Auth(this._id, this._usr, this._pwd);

  Auth.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._usr = map['usr'];
    this._pwd = map['pwd'];
  }

  //GETTER
  int get id => _id;
  String get usr => _usr;
  String get pwd => _pwd;

  set id(int v) {
    this._id = v;
  }

  set usr(String v) {
    this._usr = v;
  }

  set pwd(String v) {
    this._pwd = v;
  }

  // konversi dari Contact ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['usr'] = usr;
    map['pwd'] = pwd;
    return map;
  }

  // //GET DATA FROM DB
  // Auth.map(dynamic o) {
  //   this._id = o['id'];
  //   this._usr = o['usr'];
  //   this._pwd = o['pwd'];
  // }

}
