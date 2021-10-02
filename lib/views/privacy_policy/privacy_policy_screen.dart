
import 'package:neuroverse/helpers/imports_and_exports.dart';

class PrivacyPolicy extends GetView<SettingsScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<SettingsScreenController>(
        init: SettingsScreenController(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: AppColors.neuroverse_Backgroud_Color,
                centerTitle: true,
                automaticallyImplyLeading: false,

                elevation: 0,
                title: Text(
                  "Privacy Policy",
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
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Text("gelloe")
              ));
        });
  }

  Widget settingsText(String name) {
    return Text(
      name,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: .5)),
    );
  }

  Widget bottomSheetWidget(context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Sign in or Sign up in the given options",
              style: GoogleFonts.palanquin(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: MediaQuery.of(context).size.width * .1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.neuroverse_Backgroud_Color),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      controller.login();
                      Get.back();
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      child: Image(
                        image: AssetImage(ImagesAndIcons.google),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Google",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            // fontWeight: FontWeight.w500,
                            letterSpacing: 1.0)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () async {
                //  await controller.faceBookLogin();
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: MediaQuery.of(context).size.width * .1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.neuroverse_Backgroud_Color),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: Image(
                        image: AssetImage(ImagesAndIcons.fb),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FaceBook",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              // fontWeight: FontWeight.w500,
                              letterSpacing: 1.0)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                controller.twitterLogin();
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: MediaQuery.of(context).size.width * .1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.neuroverse_Backgroud_Color),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: Image(
                        image: AssetImage(ImagesAndIcons.twitter),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Twitter",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              // fontWeight: FontWeight.w500,
                              letterSpacing: 1.0)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
