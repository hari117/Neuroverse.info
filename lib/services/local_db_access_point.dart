


import 'package:neuroverse/helpers/imports_and_exports.dart';

class LocalStorage 
{


  late var _box;

  String token="Auth_Token";

  LocalStorage() {

    _box= Hive.openBox(Keywords.app_Name);
    print("DB initnilized");
  }



  getStorageInstance() => _box;


  set auth_token(String? value) {

    print(value);
    print("********** auth token is setted");
    _box.put(token,value);

  }

  get get_Auth_token =>_box.get(token);




}