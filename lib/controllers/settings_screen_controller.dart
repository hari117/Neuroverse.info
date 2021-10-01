import 'package:neuroverse/helpers/imports_and_exports.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class SettingsScreenController extends GetxController
{


  Map<dynamic,dynamic> userData={};
  late final Box box= Hive.box(Keywords.app_Name);

  String url="https://www.neuroverse.info/";


  bool isLoading =false;

  bool isLogin=false;

  late GoogleService google=Get.find<GoogleService>();
  late TwitterAuthService twitter=Get.find<TwitterAuthService>();

  @override
  Future<void> onInit() async {
    print("calling oninit funtion again");
    // google=Get.find<GoogleService>();
    isLoading=true;

    isLogin= await checkUserIsLoginOrNot();

    if(isLogin)
    {
      DataSnapshot blodData =await FirebaseDatabase.instance
          .reference()
          .child("UserInformation")
          .child((box.get("token")).toString())

          .once();

      userData=blodData!.value;

    }


    isLoading=false;
    update();
  }

  checkUserIsLoginOrNot()
  async{
    String tocken=await (box.get("token")).toString() ?? "";
    return tocken=="" || tocken==null ?false : true;
  }

  initFun()async{

    print("initfun called");
    isLoading=true;

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





  openWebsite()
  async{
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }




  logout()
  async{
    await google.googleSignOut();
    await box.clear();
    await initFun();
    update();
  }

  login()
  async{
    await google.googleLogin();
    await initFun();
    update();
  }



  twitterLogin()
 async {

   await twitter.loginTwitter();
   Get.back();


  }



//   faceBookLogin()
//   async{
//     final LoginResult result = await FacebookAuth.instance.login(); // by default we request the email and the public profile
// // or FacebookAuth.i.login()
//     if (result.status == LoginStatus.success) {
//       // you are logged
//       final AccessToken accessToken = result.accessToken!;
//     } else {
//       print(result.status);
//       print(result.message);
//     }
//   }


  @override
  void onClose() {
//
    google.dispose();
  }
}