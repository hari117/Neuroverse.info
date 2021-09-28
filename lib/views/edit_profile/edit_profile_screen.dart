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
                centerTitle: true,
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
                leading: IconButton(
                  onPressed: (){
                   Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                ),
              ),
              body: controller.isLoading?Container():Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Column(
                   // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),
                      Text("User Name",style: GoogleFonts.palanquin(
                          textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.8)),),
                      SizedBox(height: 8,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: AppColors.neuroverse_Backgroud_Color,width: 2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.only(left: 5),
                        child: TextField(

                          controller: controller.nameChangeController,
                          cursorColor: Colors.black,
                          autofocus: true,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,

                                  letterSpacing: .5)),
                          decoration: InputDecoration(

                            border: InputBorder.none,

                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Change profile picture",style: GoogleFonts.palanquin(
                          textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.8)),),
                      SizedBox(height: 8,),
                      InkWell(
                        onTap: (){
                          controller.selectFile();
                        },
                        child: Container(


                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: controller.photoUrl == "" ? Image(image: NetworkImage(controller.userData["photoUrl"]),):
                            Image.file(controller.pickedImageData)
                        ),
                      )
                    ],
                  ),
                ),
              ),

              bottomNavigationBar: InkWell(
                onTap: ()async{
                await controller.updateUserProfile();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  height: 45,

                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text("Update",style: GoogleFonts.palanquin(
                  textStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.8)),),
                ),
              ),
            ),

    );
  }
}