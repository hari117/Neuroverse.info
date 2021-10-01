import 'package:neuroverse/helpers/imports_and_exports.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class SettingsScreenController extends GetxController
{


  Map<dynamic,dynamic> userData={};
  late final Box box= Hive.box(Keywords.app_Name);

  String url="https://www.neuroverse.info/";
 String privacy_policy="https://www.termsfeed.com/live/396aee4f-fa78-4dc5-bcb0-2a67a5257644";

  bool isLoading =false;

  bool isLogin=false;

  late GoogleService google=Get.find<GoogleService>();
  late TwitterAuthService twitter=Get.find<TwitterAuthService>();
 late PackageInfo packageInfo;
 String appVersion="";

  @override
  Future<void> onInit() async {
    print("calling oninit funtion again");
    packageInfo=  await PackageInfo.fromPlatform();
    appVersion = packageInfo.version;

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

    }else
      {
        print("user is not login");
      }


    isLoading=false;
    update();
  }

  checkUserIsLoginOrNot()
  async{
    dynamic tocken=(await box.get("token")  ?? "").toString();

    print ("the token is $tocken");
    return tocken=="" || tocken==null ? false : true;
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
          .child((await box.get("token")  ?? "").toString())

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

    openPrivacyPolicyWebsite()
    async{

      await canLaunch(privacy_policy) ? await launch(privacy_policy) : throw 'Could not launch $privacy_policy';
    }




  login()
  async{
    await google.googleLogin();
    await initFun();
    update();
  }


  twitterLogin()
 async {
   Get.back();
   await twitter.loginTwitter();

   await initFun();
   update();


  }


  logout()
  async{
   String name = await  box.get("login_method");
   switch (name)
   {
     case "google":
       googleLogOut();
       break;
     case "twitter":
       twitterLogout();
       break;
   }

  }




  googleLogOut()
  async{
    await google.googleSignOut();
    await box.clear();
    await initFun();
    update();
  }

  twitterLogout()
  async{
    await twitter.logoutTwitter();
    await box.clear();
    await initFun();
    update();
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