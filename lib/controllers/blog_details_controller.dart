import 'dart:math';

import 'package:neuroverse/helpers/imports_and_exports.dart';
import 'package:neuroverse/services/auth_services/google_auth.dart';
import 'package:intl/intl.dart';

class BlogDetailsController extends GetxController {
  late GoogleService googleInstance;

  late FirebaseService firebaseInstance;
   late final Box box;

   TextEditingController reviewController=TextEditingController();
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

    DataSnapshot blodData =await FirebaseDatabase.instance
        .reference()
        .child("UserLikesAndDisLikes")
        .child(box.get("token"))
        .child(blogId)
        .once();


    // here we are getting blog likes and dislikes
    DataSnapshot blogCount =await FirebaseDatabase.instance
        .reference()
        .child("BlogsCounts")
        .child(blogId)
        .once();
    Map<dynamic,dynamic> firebaseBlogCount=blogCount!.value;

    Map<dynamic,dynamic> data=blodData!.value;


       if(type=="like")
         {
           int likeCount =firebaseBlogCount["like"];
           int dislikeCount =firebaseBlogCount["dislike"];
           Map<String,dynamic> tempMap={};
/*           if(data["like"]==1)
             {
               tempMap["like"] = 0;
               tempMap["dislike"] = 0;
               likeCount=likeCount-1;
               // need to update blog count
             }else
               {
                 tempMap["like"] = 1;
                 tempMap["dislike"] = 0;
                 likeCount=likeCount+1;
                 dislikeCount=dislikeCount-1;
                 // need to update blog count
               }*/
           if(data["like"]==1){

           }else
             {
               tempMap["like"] = 1;
               tempMap["dislike"] = 0;
               likeCount=likeCount+1;
               dislikeCount=dislikeCount-1;
             }


           // push to firbease blog count

              Map<String,dynamic> updateCount={};
           updateCount["like"]=likeCount;
           print("the runtime type is ${firebaseBlogCount["dislike"].runtimeType}");
           updateCount["dislike"]=dislikeCount;
           await FirebaseDatabase.instance
               .reference()
               .child("BlogsCounts")
               .child(blogId)
               .update(updateCount);


           await FirebaseDatabase.instance
               .reference()
               .child("UserLikesAndDisLikes")
               .child(box.get("token"))
               .child(blogId)
               .update(tempMap);

         }

        if(type == "dislike")
          {
            int dislikeCount =firebaseBlogCount["dislike"];
            int likeCount =firebaseBlogCount["like"];
            Map<String,dynamic> tempMap={};
 /*           if(data["dislike"]==1)
            {
              tempMap["like"] = 0;
              tempMap["dislike"] = 0;
              dislikeCount=dislikeCount-1;
              // need to update blog count
            }

            else
            {
              tempMap["like"] = 0;
              tempMap["dislike"] = 1;
              dislikeCount=dislikeCount+1;
             likeCount=likeCount-1;
              // need to update blog count
            }*/
            if(data["dislike"]==1){

            }else {
              tempMap["like"] = 0;
              tempMap["dislike"] = 1;
              dislikeCount = dislikeCount + 1;
              likeCount = likeCount - 1;
            }

            Map<String,dynamic> updateCount={};
            updateCount["dislike"]=dislikeCount;

            updateCount["like"]=likeCount;
            await FirebaseDatabase.instance
                .reference()
                .child("BlogsCounts")
                .child(blogId)
                .update(updateCount);




            await FirebaseDatabase.instance
                .reference()
                .child("UserLikesAndDisLikes")
                .child(box.get("token"))
                .child(blogId)
                .update(tempMap);
          }




   // updataTotalCounts(blogId,type);
  }



  // review add funtion

    addReview(String blogId)
    async{


      DataSnapshot blodData =await FirebaseDatabase.instance
          .reference()
          .child("UserInformation")
          .child(box.get("token"))
          .once();

      Map<dynamic,dynamic> userData=blodData!.value;


    Random random=Random();
      await FirebaseDatabase.instance
          .reference()
          .child("Reviews")

          .child(blogId).child(random.nextInt(15).toString())
          .set({
        "text":reviewController.text,
        "userId":box.get("token"),
        "Date":"${DateFormat.yMd().add_jm().format(DateTime.now())}",
        "imageUrl":userData["photoUrl"],
        "userName":userData["displayName"],
        "docId":random.nextInt(15).toString()
      });
      reviewController.clear();
    }


    deleteReView(String blogId,String docId)
   async {
      await FirebaseDatabase.instance
          .reference()
          .child("Reviews")

          .child(blogId).child(docId).remove();


    }


}
