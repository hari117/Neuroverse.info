import 'package:neuroverse/helpers/imports_and_exports.dart';

class SettingsScreenController extends GetxController
{


 Map<dynamic,dynamic> userData={};
 late final Box box;

 String url="https://www.neuroverse.info/";

 late GoogleService googleInstance;

  @override
  Future<void> onInit() async {
    googleInstance = Get.find<GoogleService>();
    box= Hive.box(Keywords.app_Name);
    DataSnapshot blodData =await FirebaseDatabase.instance
        .reference()
        .child("UserInformation")
        .child(box.get("token"))

        .once();

    userData=blodData!.value;

     update();
  }







  openWebsite()
  async{
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }


   logout()
   {


   }



}