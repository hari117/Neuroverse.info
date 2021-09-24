
import 'package:neuroverse/helpers/imports_and_exports.dart';

class FirebaseService extends GetxController
{
 late final _databaseReference;
  FirebaseService()
  {
    _databaseReference = FirebaseDatabase.instance.reference();

  }
  //createing user account

  get firebaseInstance => _databaseReference;
  creatingUser({Map<String,dynamic>? userModel})
  {
    print("called creating user funtion");
  //  _databaseReference.child(Keywords.UserInfoDb).child(userModel![id]).set(userModel);
  }



  updatingUserLikesAndDisLikes(String userId,String type,String blogId)
 async {
    Map<String,dynamic> mapData={};
    if(type=="like")
      {
        mapData["like"]=1;
        mapData["dislike"]=0;
      }else
        {
          mapData["like"]=0;
          mapData["dislike"]=1;
        }
   await FirebaseDatabase.instance.reference().child("UserLikesAndDisLikes").child("101917814999370441435").child(blogId).update(mapData);
  }
  UpdatingOverAllLikesAndDisLikes(String blogId,String type)
  {


  }

  // updating user accout


  // retriving comments for particular blog


  // creating comment for particular blog


  // updating particular comment for a blog

  // deleting comment for particular comment


  // over all likes and dislikes for a particular blog




  // user particular like and dislike control

}