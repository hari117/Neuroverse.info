import 'package:neuroverse/helpers/imports_and_exports.dart';

class SettingsScreen extends GetView<SettingsScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<SettingsScreenController>(
        init: SettingsScreenController(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: Text(
                  "Settings",
                  style: GoogleFonts.palanquin(
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5)),
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: AppColors.neuroverse_Backgroud_Color,
              ),
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          controller.isLoading
                              ? SizedBox(
                                  height: 20,
                                )
                              : Container(),
                          controller.isLoading
                              ? Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color:
                                          AppColors.neuroverse_Backgroud_Color,
                                      borderRadius: BorderRadius.circular(10)),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    //     color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: double.infinity,
                                  child: controller.isLogin
                                      ? Container(
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 50),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: AppColors
                                                        .neuroverse_Backgroud_Color,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                        height: 60,
                                                      ),
                                                      Text(
                                                        controller.userData[
                                                            "displayName"],
                                                        style:
                                                            GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              letterSpacing:
                                                                  1.2),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        controller
                                                            .userData["email"],
                                                        style: GoogleFonts.poppins(
                                                            textStyle: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                letterSpacing:
                                                                    1.0)),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      controller.userData[
                                                          "photoUrl"]),
                                                  radius: 38,
                                                ),
                                                top: 25,
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.8,
                                              ),
                                            ],
                                          ),
                                        )
                                      : Container(
                                          height: 155,
                                          margin: EdgeInsets.only(top: 20),
                                          decoration: BoxDecoration(
                                              color: AppColors
                                                  .neuroverse_Backgroud_Color,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 15,
                                              ),
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    ImagesAndIcons.no_user),
                                                radius: 38,
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  // open bottom sheet and
                                                  Get.bottomSheet(
                                                      bottomSheetWidget(
                                                          context));
                                                },
                                                child: Container(
                                                  width: 150,
                                                  height: 35,
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      color: Color(0xFFa8c2ff)),
                                                  child: Text(
                                                    "Sign in /Sign up",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            letterSpacing:
                                                                1.0)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),

                          controller.isLogin
                              ? InkWell(
                                  onTap: () {
                                    Get.to(EditProfileScreen())!.then((value) {
                                      controller.initFun();
                                    });
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(
                                        top: 15, bottom: 15, left: 5),
                                    margin: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        color: AppColors
                                            .neuroverse_Backgroud_Color,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          width: 25,
                                          height: 20,
                                          child: Image(
                                            image: AssetImage(
                                              ImagesAndIcons.profile_edit,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        settingsText("Profile edit")
                                      ],
                                    ),
                                  ),
                                )
                              : Container(),
                          Container(
                            width: double.infinity,
                            padding:
                                EdgeInsets.only(top: 15, bottom: 15, left: 5),
                            margin: EdgeInsets.only(top: 15),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: AppColors.neuroverse_Backgroud_Color,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 25,
                                  height: 20,
                                  child: Image(
                                    image: AssetImage(
                                      ImagesAndIcons.about_us,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                settingsText("About us")
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.openWebsite();
                            },
                            child: Container(
                              width: double.infinity,
                              padding:
                                  EdgeInsets.only(top: 15, bottom: 15, left: 5),
                              margin: EdgeInsets.only(top: 15),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: AppColors.neuroverse_Backgroud_Color,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    width: 25,
                                    height: 21,
                                    child: Image(
                                      image: AssetImage(
                                        ImagesAndIcons.visit,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  settingsText("Visit our website")
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                           controller.openPrivacyPolicyWebsite();
                            },
                            child: Container(
                              width: double.infinity,
                              padding:
                                  EdgeInsets.only(top: 15, bottom: 15, left: 5),
                              margin: EdgeInsets.only(top: 15),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: AppColors.neuroverse_Backgroud_Color,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    width: 25,
                                    height: 20,
                                    child: Image(
                                      image: AssetImage(
                                        ImagesAndIcons.privacy_policy,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  settingsText("Privacy policy")
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding:
                                EdgeInsets.only(top: 15, bottom: 15, left: 5),
                            margin: EdgeInsets.only(top: 15),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: AppColors.neuroverse_Backgroud_Color,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      width: 25,
                                      height: 20,
                                      child: Image(
                                        image: AssetImage(
                                          ImagesAndIcons.app_version,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    settingsText("App version")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child:
                                      settingsText("v${controller.appVersion}"),
                                )
                              ],
                            ),
                          ),
                       controller.isLogin?   InkWell(
                            onTap: () {
                              print("logout called");
                              Get.defaultDialog(
                                  title: "Are you sure you want to logout ?",
                                  middleText: "Hello world!",
                                  backgroundColor: Colors.white,
                                  titleStyle: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  )),
                                  middleTextStyle:
                                      TextStyle(color: Colors.white),
                                  cancelTextColor: Colors.white,
                                  confirmTextColor: Colors.white,
                                  buttonColor: Colors.red,
                                  barrierDismissible: false,
                                  radius: 5,
                                  content: Column(
                                    children: [
                                      Row(
                                        children: [
                                          InkWell(
                                            child: Container(
                                              child: Text(
                                                "Cancel",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 1.5)),
                                              ),
                                              decoration: BoxDecoration(
                                                //border: Border.all(color: Colors.blue,width: 1),
                                                color: AppColors
                                                    .neuroverse_Backgroud_Color,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 10,
                                              ),
                                              alignment: Alignment.center,
                                              width: 100,
                                              height: 35,
                                            ),
                                            onTap: () {
                                              Get.back();
                                            },
                                          ),
                                          InkWell(
                                            child: Container(
                                              child: Text(
                                                "Logout",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 1.5)),
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.red,
                                                    width: 2),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 10,
                                              ),
                                              alignment: Alignment.center,
                                              width: 100,
                                              height: 35,
                                            ),
                                            onTap: () async {
                                              await controller.googleLogOut();
                                              Get.back();
                                            },
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                      ),
                                    ],
                                  ));
                              //
                            },
                            child: Container(
                              width: double.infinity,
                              padding:
                                  EdgeInsets.only(top: 15, bottom: 15, left: 5),
                              margin: EdgeInsets.only(top: 15),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: AppColors.neuroverse_Backgroud_Color,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        width: 25,
                                        height: 20,
                                        child: Image(
                                          color: Colors.red,
                                          image: AssetImage(
                                            ImagesAndIcons.logout,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      settingsText("Logout")
                                    ],
                                  ),
                                  Container(

                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(right: 15),
                                    child: Image(
                                      width: 25,
                                      height: 22,
                                      image: AssetImage(
                                           controller.box.get("login_method") == "google"? ImagesAndIcons.google :ImagesAndIcons.twitter ,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ) : Container(),
                          SizedBox(
                            height: 25,
                          ),

                          // controller.openWebsite();
                        ],
                      )
                    ],
                  ),
                ),
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
         /*   InkWell(
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
            ),*/
            // SizedBox(
            //   height: 15,
            // ),
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
