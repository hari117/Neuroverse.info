import 'dart:math';
import 'package:intl/intl.dart';
import 'package:share/share.dart';

import 'package:neuroverse/helpers/imports_and_exports.dart';

class BlogDetailsController extends GetxController {
  late GoogleService googleInstance;
  late TwitterAuthService twitterInstance;
  late FirebaseService firebaseInstance;
  late final Box box=Hive.box(Keywords.app_Name);

  TextEditingController reviewController=TextEditingController();


  Map<dynamic,dynamic> userData={};


  bool isLoading =false;
  bool isLoginIn=false;

  @override
  void onInit() async{
    print("blog detials init called");
    isLoading=true;
    await checkIsUserLogin();
    googleInstance = Get.find<GoogleService>();
    firebaseInstance = Get.find<FirebaseService>();
    twitterInstance=Get.find<TwitterAuthService>();
    googleInstance.googleStream();
    print("user login or not ? $isLoginIn");
    if(isLoginIn)
    {
      DataSnapshot blodData =await FirebaseDatabase.instance
          .reference()
          .child("UserInformation")
          .child(box.get("token"))
          .once();

      userData=blodData!.value;
      print("the user data is ${userData}");
    }else
    {
      print("no user login");
    }
    isLoading=false;
    update();



  }

 initFun()
 async{
   print("blog detials init called");
   isLoading=true;
   await checkIsUserLogin();
   googleInstance = Get.find<GoogleService>();
   firebaseInstance = Get.find<FirebaseService>();
   googleInstance.googleStream();
   print("user login or not ? $isLoginIn");
   if(isLoginIn)
   {
     DataSnapshot blodData =await FirebaseDatabase.instance
         .reference()
         .child("UserInformation")
         .child(box.get("token").toString())
         .once();

     userData=blodData!.value;
     print("the user data is ${userData}");
   }else
   {
     print("no user login");
   }
   isLoading=false;
   update();


 }




  updataData(String blogId, String type) async{

    DataSnapshot blodData =await FirebaseDatabase.instance
        .reference()
        .child("UserLikesAndDisLikes")
        .child(box.get("token").toString())
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
        if(dislikeCount==0)
        {

        }else
        {
          dislikeCount=dislikeCount-1;
        }

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
          .child(box.get("token").toString())
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
        if(likeCount==0)
        {

        }else{
          likeCount = likeCount - 1;
        }

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
          .child(box.get("token").toString())
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
        .child(box.get("token").toString())
        .once();

    Map<dynamic,dynamic> userData=blodData!.value;


    Random random=Random();
    String docId=random.nextInt(15).toString();
    await FirebaseDatabase.instance
        .reference()
        .child("Reviews")

        .child(blogId).child(docId)
        .set({
      "text":reviewController.text,
      "userId":box.get("token"),
      "Date":"${DateFormat.yMd().add_jm().format(DateTime.now())}",
      "imageUrl":userData["photoUrl"],
      "userName":userData["displayName"],
      "docId":docId
    });
    reviewController.clear();
  }


  deleteReView(String blogId,String docId)
  async {


     print("the doc id is ${docId}");
     print("delete funtion called");
    await FirebaseDatabase.instance
        .reference()
        .child("Reviews")
        .child(blogId).child(docId).remove();


  }



  shareArticle(String headline)
  {
    print("article method called");
    Share.share("title"+ ":" +" "+headline +" \n" +"App link :" + "abcd link");

  }

  checkIsUserLogin()
  async{
    String temp= (await box.get("token")  ?? "").toString();
    if(temp == null || temp == "")
      isLoginIn=false;
    else
      isLoginIn=true;

    update();
  }



  loginToGoogle() {
    googleInstance.googleLogin();
    initFun();
    update();
    Get.back();


  }




  loginToTwitter() {
    twitterInstance.loginTwitter();
    initFun();
    update();
    Get.back();


  }



  logOutToGoogle() => googleInstance.googleSignOut();


  logOutToTwitter() => twitterInstance.logoutTwitter();



  openDonateLink()async{
    String url="https://www.gofundme.com/f/homepage2?utm_campaign=p_cf+share-flow-1&utm_medium=copy_link&utm_source=customer";
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

}
