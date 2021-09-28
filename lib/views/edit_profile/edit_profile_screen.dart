import 'package:neuroverse/helpers/imports_and_exports.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<EditProfileController>(
        init: EditProfileController(),
        builder: (controller) =>
            Scaffold(
              appBar: AppBar(
                backgroundColor: AppColors.neuroverse_Backgroud_Color,
                centerTitle: false,
                automaticallyImplyLeading: false,
                elevation: 0,
                title: Text(
                  "Edit Profile",
                  style: GoogleFonts.palanquin(
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5)),
                ),
              ),

            ));
  }
}