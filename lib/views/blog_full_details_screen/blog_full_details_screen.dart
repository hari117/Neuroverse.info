import 'package:neuroverse/helpers/imports_and_exports.dart';
import 'package:firebase_database/firebase_database.dart';

class BlogFullDetailsScreen extends GetView<BlogDetailsController> {
  late Chapter object;

  BlogFullDetailsScreen(this.object);

  @override
  Widget build(BuildContext context) {
    print("the value is ${object.chapter_images.isEmpty}");
    // TODO: implement build
    return GetBuilder<BlogDetailsController>(
        init: BlogDetailsController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.neuroverse_Backgroud_Color,
            appBar: AppBar(
              backgroundColor: AppColors.neuroverse_Backgroud_Color,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Get.back();
                },
                color: Colors.black,
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(bottomSheet());
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 250,
                          width: double.infinity,
                          color: Colors.green,
                          alignment: Alignment.center,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                object.title_image,
                                fit: BoxFit.fitWidth,
                              )),
                        ),
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
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    StreamBuilder(
                                        stream: FirebaseDatabase.instance
                                            .reference()
                                            .child("UserLikesAndDisLikes")
                                            .child("101917814999370441435")
                                            .child(object.id).onValue,
                                        builder: (context,AsyncSnapshot<Event> snap) {
                                          if (snap.hasData) {

                                            final  data=snap.data!.snapshot.value;


                                            return     InkWell(

                                              child: Image.asset(
                                                ImagesAndIcons.like,
                                                scale: 25,
                                                color: data["like"]==0 ?Colors.black.withOpacity(.7):AppColors.primary_color,
                                              ),
                                              onTap: ()async{
                                               String token= controller.box.get("token") ?? "";
                                               print("printing token form blog $token");
                                                if(token.isEmpty)
                                                  {
                                                    Get.bottomSheet(bottomSheet());

                                                    print("condition is correct");
                                                    //bottomSheet();
                                                   }
                                                else
                                                    {
                                                      controller.updataData(object.id,"like");

                                                    }
                                              },
                                            );
                                          }
                                          return Text("");
                                        }),
                                    StreamBuilder(
                                        stream: FirebaseDatabase.instance.reference().child("BlogsCounts").child(object.id).onValue,
                                        builder: (context,AsyncSnapshot<Event> snap) {
                                          if (snap.hasData) {


                                            print("the object id is ${object.id}");
                                            final  data=snap.data!.snapshot.value;

                                            print("the data is ${data}");
                                            return Text(data["like"].toString(),
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Colors.green),
                                            );
                                          }
                                          return Text("");
                                        }),
                                  ],

                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Column(
                                    children: [
                                      StreamBuilder(
                                          stream: FirebaseDatabase.instance
                                      .reference()
                                      .child("UserLikesAndDisLikes")
                                      .child("101917814999370441435")
                                      .child(object.id).onValue,
                                          builder: (context,AsyncSnapshot<Event> snap) {
                                            if (snap.hasData) {

                                              final  data=snap.data!.snapshot.value;


                                              return     InkWell(

                                                child: Image.asset(
                                                  ImagesAndIcons.dislike,
                                                  scale: 25,
                                                  color: data["dislike"]==0 ?Colors.black.withOpacity(.7):AppColors.primary_color,
                                                ),
                                                onTap: (){
                                                  String token= controller.box.get("token") ?? "";
                                                  if(token.isEmpty)
                                                    {
                                                      Get.bottomSheet(bottomSheet());
                                                    }else
                                                      {
                                                        controller.updataData(object.id,"dislike");

                                                      }
                                                },
                                              );
                                            }
                                            return Text("");
                                          }),

                                      StreamBuilder(
                                          stream: FirebaseDatabase.instance.reference().child("BlogsCounts").child(object.id).onValue,
                                          builder: (context,AsyncSnapshot<Event> snap) {
                                            if (snap.hasData) {

                                              final  data=snap.data!.snapshot.value;


                                              return Text(data["dislike"].toString(),
                                                textScaleFactor: 1,
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Colors.green),
                                              );
                                            }
                                            return Text("");
                                          }),
                                    ],

                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    ImagesAndIcons.share,
                                    scale: 170,
                                    color: Colors.black.withOpacity(.7),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text("Donate",
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.ibmPlexSans(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.secondry_color,
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 1.2))),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: AppColors.secondry_color,
                                      width: 1.5)),
                            )
                            // dontate monemy
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        object.title,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.ibmPlexSans(
                          textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(.8),
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.5),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return Text(object.contents[index],
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.ibmPlexSans(
                                textStyle: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(.7),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: .8,
                                    height: 1.5)));
                      },
                      itemCount: object.contents.length > 2
                          ? 2
                          : object.contents.length,
                      separatorBuilder: (_, index) {
                        return Text("\n");
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    object.chapter_images.isEmpty
                        ? Container()
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 250,
                              width: double.infinity,
                              color: Colors.green,
                              alignment: Alignment.center,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    object.chapter_images[0],
                                    fit: BoxFit.fitWidth,
                                  )),
                            ),
                          ),
                    SizedBox(
                      height: 10,
                    ),
                    object.contents.length > 2
                        ? ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return Text(object.contents[2 + index],
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.ibmPlexSans(
                                      textStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(.7),
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: .8,
                                          height: 1.5)));
                            },
                            itemCount: object.contents.length > 2
                                ? object.contents.length - 2
                                : object.contents.length,
                            separatorBuilder: (_, index) {
                              return Text("\n");
                            },
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget bottomSheet() {
    return Container(
      color: Colors.white,
      height: 600,
      child: Column(
        children: [
          Text("login to write reviews and gives likes"),
          SizedBox(
            height: 50,
          ),
          InkWell(
              onTap: () {
                controller.loginToGoogle();
              },
              child: Text("Google login")),
          SizedBox(
            height: 100,
          ),
          InkWell(
              onTap: () {
                controller.logOutToGoogle();
              },
              child: Text("Google login")),
        ],
      ),
    );
  }
}
