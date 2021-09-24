import 'package:neuroverse/helpers/imports_and_exports.dart';
import 'package:neuroverse/services/auth_services/google_auth.dart';

class BlogDetailsController extends GetxController {
  late GoogleService googleInstance;

  late FirebaseService firebaseInstance;
   late final Box box;
  @override
  void onInit() {

    box= Hive.box(Keywords.app_Name);
    googleInstance = Get.find<GoogleService>();
    firebaseInstance = Get.find<FirebaseService>();
    googleInstance.googleStream();
    print("on init funtion called");
  }

  @override
  void onReady() {
    print("on ready funtion called");
  }

  loginToGoogle() {
    googleInstance.googleLogin();
    Get.back();
  }

  logOutToGoogle() => googleInstance.googleSignOut();

  updataData(String blogId, String type) async{
    Map<String, dynamic> mapData = {};
    if (type == "like") {
      mapData["like"] = 1;
      mapData["dislike"] = 0;
    } else {
      mapData["like"] = 0;
      mapData["dislike"] = 1;
    }
    await FirebaseDatabase.instance
        .reference()
        .child("UserLikesAndDisLikes")
        .child("101917814999370441435")
        .child(blogId)
        .update(mapData);
    updataTotalCounts(blogId,type);
  }

  updataTotalCounts(String blogId,String type)
  async{

    // first we need to get total valeess
    DataSnapshot datab =await FirebaseDatabase.instance
        .reference()
        .child("UserLikesAndDisLikes")
        .child("101917814999370441435")
        .child(blogId)
        .once();
    Map<dynamic,dynamic> datas=datab!.value;
    print("printig dynmaic values $datas");
    // second we need to rectify the type use selected

    if(type=="like") {

      if(datas["like"]==1){

        Map<String,dynamic> map={"like":0,"dislike":0};
        datas["like"]=0;
        await FirebaseDatabase.instance
            .reference()
            .child("UserLikesAndDisLikes")
            .child("101917814999370441435")
            .child(blogId)
            .update(map);
      }

    }


    if(type=="dislike"){


    }
    // if it is like need to inc +1 and dec -1


  }

}
