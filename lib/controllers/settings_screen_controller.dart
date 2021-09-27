import 'package:neuroverse/helpers/imports_and_exports.dart';

class SettingsScreenController extends GetxController
{


 Map<dynamic,dynamic> userData={};
 late final Box box;

 String url="https://www.neuroverse.info/";

 late GoogleService googleInstance;

   bool isLoading =false;

   bool isLogin=false;

  @override
  Future<void> onInit() async {

    isLoading=true;
    googleInstance = Get.find<GoogleService>();
    box= Hive.box(Keywords.app_Name);
    isLogin= await checkUserIsLoginOrNot();

    if(isLogin)
      {
        DataSnapshot blodData =await FirebaseDatabase.instance
            .reference()
            .child("UserInformation")
            .child(box.get("token"))

            .once();

        userData=blodData!.value;

      }


    isLoading=false;
     update();
  }

  checkUserIsLoginOrNot()
  async{
    String tocken=await box.get("token") ?? "";
    return tocken=="" || tocken==null ?false : true;
  }







  openWebsite()
  async{
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }


   logout()
   {


   }




}