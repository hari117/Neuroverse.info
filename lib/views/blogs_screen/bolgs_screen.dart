import 'package:neuroverse/helpers/imports_and_exports.dart';

class BlogsScreen extends GetView<BlogsScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<BlogsScreenController>(
        init: BlogsScreenController(),
        builder: (controller) => Scaffold(
              appBar: AppBar(
                backgroundColor: AppColors.neuroverse_Backgroud_Color,
                centerTitle: false,
                automaticallyImplyLeading: false,
                elevation: 0,
                title: Text(
                  Keywords.app_Name,
                  style: GoogleFonts.ibmPlexSans(
                      textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5)),
                ),
              ),
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(height: 15,),
                  ListView.separated(
                    itemBuilder: (_, index) {
                      return blog_card(controller.blogs![index]);
                    },
                    primary: false,
                    shrinkWrap: true,
                    itemCount: controller.blogs!.length,separatorBuilder: (context,index)=>SizedBox(height: 15,),
                  ),

                  InkWell(
                    onTap: () {
                      Get.to(SingleBlogScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 16, left: 16, right: 16),
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),


                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(
                          color: Color(0x4cec9cd3).withOpacity(.3),
                      blurRadius: 3,
                      offset: Offset(2, 2),)
                  ],


                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    ImagesAndIcons.support,
                                    fit: BoxFit.fitHeight,
                                  ))),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(
                                left: 15, right: 15, bottom: 15),
                            child: Text(
                              "4 KEY WAYS TO SUPPORT NEURODIVERGENT FRIEND",
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: GoogleFonts.ibmPlexSans(
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ));
  }

  Widget blog_card(Chapter object) {
    return InkWell(
      onTap: () {
        Get.to(() => BlogFullDetailsScreen(object));
      },
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
              color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x4cec9cd3).withOpacity(.3),
              blurRadius: 3,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  object.title_image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Text(
                object.title,
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: GoogleFonts.ibmPlexSans(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
