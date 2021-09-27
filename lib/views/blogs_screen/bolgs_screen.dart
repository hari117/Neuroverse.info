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
                  style: GoogleFonts.palanquin(
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5)),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(height: 20,),
                    ListView.separated(
                    //  padding: EdgeInsets.zero,
                      itemBuilder: (_, index) {
                        return blog_card(controller.blogs![index]);
                      },
                      primary: false,
                      shrinkWrap: true,
                      itemCount: controller.blogs!.length,separatorBuilder: (context,index)=>SizedBox(height: 15,),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: () {
                        Get.to(SingleBlogScreen());
                      },
                      child: Container(

                        height: 195,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),


                            color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 2,
                              offset: Offset(1, 1),
                              spreadRadius: 1,
                            ),
                          ],


                        ),
                        alignment: Alignment.center,

                      child: Stack(

                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                ImagesAndIcons.support,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(



                                height: 50,
                                width: double.infinity,

                                decoration: BoxDecoration(

                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          AppColors.neuroverse_Backgroud_Color,
                                          Colors.white
                                        ]
                                    )

                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "4 KEY WAYS TO SUPPORT NEURODIVERGENT FRIEND",
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          letterSpacing: .9,
                                          fontWeight: FontWeight.w600
                                      )),
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                )),
              ),
            ));
  }

  Widget blog_card(Chapter object) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
       // color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 2,
            offset: Offset(1, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Get.to(() => BlogFullDetailsScreen(object));
        },
        child: Container(

          height: 195,
          //width: double.infinity,

          alignment: Alignment.bottomCenter,
          child: Stack(

            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  object.title_image,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(



                  height: 50,
                  width: double.infinity,

                  decoration: BoxDecoration(

                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        AppColors.neuroverse_Backgroud_Color,
                        Colors.white
                      ]
                    )

                  ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                    object.title,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            letterSpacing: .9,
                          fontWeight: FontWeight.w600
                            )),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
