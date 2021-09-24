
import 'package:neuroverse/helpers/imports_and_exports.dart';
import 'package:google_sign_in/google_sign_in.dart';
class GoogleService extends GetxController
{


   late GoogleSignIn _googleSignIn;
   GoogleSignInAccount? _currentUser;

  late final firebaseInstance;
   late final localDbInstance;
    final firebaseController =Get.find<FirebaseService>();
  var box;

   GoogleService()
  {

    firebaseInstance=Get.find<FirebaseService>();
    localDbInstance= Get.find<LocalStorage>();
    _googleSignIn=GoogleSignIn();
   box = Hive.openBox(Keywords.app_Name);
  }

  getGoogleInstance () => _googleSignIn;

   googleLogin() async{

    _googleSignIn.signIn().then((value) {

      Map<String,dynamic> model={
      "displayName":value!.displayName,
      "id":value!.id,
      "email":value !.email,
      "photoUrl":value!.photoUrl,
      };
      Hive.box(Keywords.app_Name)..put("token",value!.id);
      FirebaseDatabase.instance.reference().child(Keywords.UserInfoDb).child(value!.id).set(model);


      FirebaseDatabase.instance.reference().child("UserLikesAndDisLikes").child(value!.id).set(
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



   }


   googleStream()
   {
     _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {

       if (_currentUser != null)
         _currentUser = account;

     });
     _googleSignIn.signInSilently();
     update();
   }


   googleSignOut()
   {
     _googleSignIn.signOut();
   }


}