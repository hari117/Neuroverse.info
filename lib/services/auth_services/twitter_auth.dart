


import 'package:neuroverse/helpers/imports_and_exports.dart';

class TwitterAuthService extends GetxController

{

  final settingsController =Get.find<SettingsScreenController>();
  final blgController =Get.find<BlogDetailsController>();

  late final twitterLogin;
  initTwitter(){
    print("twitter initiazed");
    twitterLogin= TwitterLogin(

      apiKey: '5Iv1Yj6ZqWQTJ1xcZVkJ3mtqO',

      apiSecretKey: '8oIR4Duyt8KsbwNRGdCkh5RNlxDw4P4UuMGUATpjVGcvq0CYys',

      redirectURI: 'https://neuroverse-info.firebaseapp.com/__/auth/handler',
    );
  }

  loginTwitter()
  async{




    await  twitterLogin.login().then((value) async{
      print("twottee");
      final result=value;




      Map<String,dynamic> model={
        "displayName":result!.user!.name,
        "id":result!.user!.id.toString(),
        "email":result!.user!.email,
        "photoUrl":result!.user!.thumbnailImage,
      };
      await  Hive.box(Keywords.app_Name)..put("token",result!.user!.id);
      await  Hive.box(Keywords.app_Name)..put("login_method","twitter");
      await FirebaseDatabase.instance.reference().child(Keywords.UserInfoDb).child(result!.user!.id.toString()).set(model);


      await FirebaseDatabase.instance.reference().child("UserLikesAndDisLikes").child(result!.user!.id.toString()).set(
          {

            "c3_blog":{
              "like":0,
              "dislike":0
            },
            "c4_blog":{
              "like":0,
              "dislike":0
            },
            "c5_blog":{
              "like":0,
              "dislike":0
            },
            "c6_blog":{
              "like":0,
              "dislike":0
            },
            "c7_blog":{
              "like":0,
              "dislike":0
            },
            "c8_blog":{
              "like":0,
              "dislike":0
            },
            "c9_blog":{
              "like":0,
              "dislike":0
            },
            "c10_blog":{
              "like":0,
              "dislike":0
            },

          }




      );

    });

    await settingsController.initFun();
    await blgController.initFun();
      update();





  }



  logoutTwitter()
 async {
    await twitterLogin.logOut();
  }
}