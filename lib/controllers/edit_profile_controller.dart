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
    // store image in firebase and get the url

    if (pickedImageData != null) {
      await FirebaseStorage.instance
          .ref('ProfilePictures/${nameChangeController.text}')
          .putFile(pickedImageData)
          .then((value) {
            print("************");
            print(value.ref.fullPath);
            print("************");

      });
    } else {}

    // update the url in user profile image
  }
/*

extends State<UploadingImageToFirebaseStorage> {
  File _imageFile;

  ...

  Future uploadImageToFirebase(BuildContext context) async {


    String fileName = basename(_imageFile.path);


    StorageReference firebaseStorageRef =  FirebaseStorage.instance.ref().child('uploads/$fileName');

    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_imageFile);

    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;

    taskSnapshot.ref.getDownloadURL().then(
          (value) => print("Done: $value"),
        );
  }
  ...
}


 */

}
