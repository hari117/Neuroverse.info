import 'package:neuroverse/helpers/imports_and_exports.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class EditProfileController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  late File pickedImageData;

  TextEditingController nameChangeController = TextEditingController();
  Map<dynamic, dynamic> userData = {};
  late final Box box = Hive.box(Keywords.app_Name);
  bool isLoading = false;

  bool isButtonLoading=false;
  String photoUrl = "";

  @override
  void onInit() async {
    isLoading = true;
    DataSnapshot blodData = await FirebaseDatabase.instance
        .reference()
        .child("UserInformation")
        .child(box.get("token") ?? "")
        .once();

    userData = blodData!.value;
    nameChangeController.text = userData["displayName"];
    //photoUrl=userData["photoUrl"];
    isLoading = false;
    update();
  }

  selectFile() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    pickedImageData = await File(image!.path);
    photoUrl = image!.path;
    update();
  }

  updateUserProfile() async {
    isButtonLoading=true;
    // store image in firebase and get the url
    Map<String,dynamic> data={};
    data["displayName"]=nameChangeController.text;
    if (pickedImageData != null) {

      await FirebaseStorage.instance
          .ref('ProfilePictures/${nameChangeController.text}')
          .putFile(pickedImageData)
          .then((value) async{
            print("************");
          String newProfileUrl= await value.ref.getDownloadURL();
            data["photoUrl"]=newProfileUrl;
            await FirebaseDatabase.instance
                .reference()
                .child("UserInformation")
                .child(box.get("token") ?? "")
                .update(data);

            update();
            Get.back();

          print("download url is $newProfileUrl ");
            print("************");

      });
    } else {
      await FirebaseDatabase.instance
          .reference()
          .child("UserInformation")
          .child(box.get("token") ?? "")
          .update(data);

    }
    isButtonLoading=false;
     update();
    // update the url in user profile image
  }


}
