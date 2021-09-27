import 'package:neuroverse/helpers/images_and_icons.dart';
import 'package:neuroverse/helpers/imports_and_exports.dart';

class HomeScreen extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: GetBuilder<HomeScreenController>(
          init: HomeScreenController(),
          builder: (controller) => Scaffold(
                body: PageView(
                  controller: controller.pageController,
                  allowImplicitScrolling:false ,
                    physics:new NeverScrollableScrollPhysics(),
                  children: [
                    BlogsScreen(),
                    QuizScreen(),
                    SettingsScreen(),
                  ],
                ),
                bottomNavigationBar: Container(
                  height: 55,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                //  color: Colors.white,
                  color: AppColors.neuroverse_Backgroud_Color,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            controller.updateBottomNavigationIndex(0);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 9),
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: controller.blogs
                                    ? AppColors.primary_color
                                    : AppColors.neuroverse_Backgroud_Color),
                            alignment: Alignment.center,
                            child: controller.blogs
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        ImagesAndIcons.home_icon,
                                        scale: 24,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text("Home",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1.5))),
                                    ],
                                  )
                                : Image.asset(
                                    ImagesAndIcons.home_icon,
                                    scale: 25,
                                    color: Colors.black,
                                  ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            controller.updateBottomNavigationIndex(1);
                          },
                          child: Container(
                            padding:
                                EdgeInsets.only(right: controller.quiz ? 25 : 0),
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),

                              color: controller.quiz
                                  ? AppColors.primary_color
                                  : AppColors.neuroverse_Backgroud_Color,
                              // color: Colors.red
                            ),
                            alignment: Alignment.center,
                            child: controller.quiz
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:   Image.asset(
                                          ImagesAndIcons.quiz_icon,
                                          scale: 24,
                                          color: Colors.black,
                                        ),
                                        width: 25,
                                        height: 25,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Quiz",    style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1.5))
                                      )
                                    ],
                                  )
                                : SizedBox(
                                    child: Image.asset(
                                      ImagesAndIcons.quiz_icon,
                                      scale: 24,
                                      color: Colors.black,
                                    ),
                                    width: 25,
                                    height: 25,
                                  ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            controller.updateBottomNavigationIndex(2);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 9),
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: controller.settings
                                  ? AppColors.primary_color
                                  : AppColors.neuroverse_Backgroud_Color,
                            ),
                            alignment: Alignment.center,
                            child: controller.settings
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                          ImagesAndIcons.user_proile,
                                          scale: 24,
                                          color: Colors.black,
                                        ),
                                        width: 25,
                                        height: 25,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Profile", style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1.5))
                                      )
                                    ],
                                  )
                                : SizedBox(
                                    child: SizedBox(
                                      child:Image.asset(
                                        ImagesAndIcons.user_proile,
                                        scale: 24,
                                        color: Colors.black,
                                      ),
                                      width: 25,
                                      height: 25,
                                    ),
                                    width: 25,
                                    height: 25,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
