
import 'package:neuroverse/helpers/imports_and_exports.dart';
class SingleBlogScreen extends GetView<SingleBlogController> {

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return GetBuilder<SingleBlogController>(
        init: SingleBlogController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.neuroverse_Backgroud_Color,
            appBar: AppBar(backgroundColor: AppColors.neuroverse_Backgroud_Color,elevation: 0,leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Get.back(); },color: Colors.black,),),

            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        color: Colors.green,
                        alignment: Alignment.center,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                             ImagesAndIcons.support,
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // icons
                            Row(
                              children: [
                                // three icons
                                SizedBox(width: 5,),
                                InkWell(onTap: (){},child: Image.asset(ImagesAndIcons.like,scale: 25,color: Colors.black.withOpacity(.7),),),
                                SizedBox(width: 30,),
                                Padding(
                                  padding: const EdgeInsets.only(top:4.0),
                                  child: InkWell(onTap: (){},child: Image.asset(ImagesAndIcons.dislike,scale: 25,color: Colors.black.withOpacity(.7),),),
                                ),
                                SizedBox(width: 30,),
                                InkWell(onTap: (){},child: Image.asset(ImagesAndIcons.share,scale: 170,color: Colors.black.withOpacity(.7),),)

                              ],
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text("Donate",maxLines: 2,overflow: TextOverflow.clip,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 14,color:AppColors.secondry_color,fontWeight: FontWeight.normal,letterSpacing: 1.2))),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: AppColors.secondry_color,width: 1.5)
                              ),
                            )
                            // dontate monemy
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:15,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("4 KEY WAYS TO SUPPORT NEURODIVERGENT FRIEND",
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.ibmPlexSans(
                          textStyle:  TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(.8),
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.5),),textAlign: TextAlign.left,),
                    ),
                    SizedBox(height:15,),
                    Text(title_01,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 16,color:Colors.black.withOpacity(.9),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:10,),

                    Text(t1_content_01,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13,color:Colors.black.withOpacity(.7),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:5,),

                    Text(t1_content_02,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13,color:Colors.black.withOpacity(.7),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:5,),

                    Text(t1_content_03,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13,color:Colors.black.withOpacity(.7),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:15,),

                    Text(title_02,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 16,color:Colors.black.withOpacity(.9),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:10,),

                    Text(t2_content_01,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13,color:Colors.black.withOpacity(.7),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:15,),

                    Text(title_03,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 16,color:Colors.black.withOpacity(.9),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:10,),

                    Text(t3_content_01,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13,color:Colors.black.withOpacity(.7),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:15,),

                    Text(title_04,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 16,color:Colors.black.withOpacity(.9),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:10,),

                    Text(t4_content_01,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13,color:Colors.black.withOpacity(.7),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:15,),

                    Text(para1,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13,color:Colors.black.withOpacity(.7),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),
                    SizedBox(height:10,),

                    Text(para2,style:  GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13,color:Colors.black.withOpacity(.7),fontWeight: FontWeight.w500,letterSpacing: .8,height: 1.5))),

                  ],
                ),
              ),
            ),
          );
        });
  }
}