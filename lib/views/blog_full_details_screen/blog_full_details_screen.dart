import 'package:neuroverse/helpers/imports_and_exports.dart';
import 'package:firebase_database/firebase_database.dart';

class BlogFullDetailsScreen extends GetView<BlogDetailsController> {
  late Chapter object;

  BlogFullDetailsScreen(this.object);

  @override
  Widget build(BuildContext context) {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              object.title_image,
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
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    controller.isLoginIn
                                        ? StreamBuilder(
                                            stream: FirebaseDatabase.instance
                                                .reference()
                                                .child("UserLikesAndDisLikes")
                                                .child((controller.box.get("token")).toString())
                                                .child(object.id)
                                                .onValue,
                                            builder: (context,
                                                AsyncSnapshot<Event> snap) {
                                              if (snap.hasData) {
                                                final data =
                                                    snap.data!.snapshot.value;

                                                return InkWell(
                                                  child: Image.asset(
                                                    ImagesAndIcons.like,
                                                    scale: 25,
                                                    color:data["like"] == 0
                                                        ? Colors.black
                                                        .withOpacity(.7)
                                                        : AppColors
                                                        .primary_color,
                                                  ),
                                                  onTap: () async {
                                                 
                                                    controller.updataData(
                                                        object.id, "like");
                                                  },
                                                );
                                              }
                                              return Image.asset(
                                                ImagesAndIcons.like,
                                                scale: 25,
                                                color: Colors.black
                                                    .withOpacity(.7),
                                              );
                                            })
                                        : InkWell(
                                            onTap: () {
                                              Get.bottomSheet(
                                                  bottomSheetWidget(context));
                                            },
                                            child: Image.asset(
                                              ImagesAndIcons.like,
                                              scale: 25,
                                              color:
                                                  Colors.black.withOpacity(.7),
                                            )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    StreamBuilder(
                                        stream: FirebaseDatabase.instance
                                            .reference()
                                            .child("BlogsCounts")
                                            .child(object.id)
                                            .onValue,
                                        builder: (context,
                                            AsyncSnapshot<Event> snap) {
                                          if (snap.hasData) {
                                            print(
                                                "the object id is ${object.id}");
                                            final data =
                                                snap.data!.snapshot.value;

                                            print("the data is ${data}");
                                            return Text(
                                              data["like"].toString(),
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Colors.black.withOpacity(.3)),
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
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Column(
                                    children: [
                                      controller.isLoginIn
                                          ? StreamBuilder(
                                              stream: FirebaseDatabase.instance
                                                  .reference()
                                                  .child("UserLikesAndDisLikes")
                                                  .child(controller.box.get("token").toString())
                                                  .child(object.id)
                                                  .onValue,
                                              builder: (context,
                                                  AsyncSnapshot<Event> snap) {
                                                if (snap.hasData) {
                                                  final data =
                                                      snap.data!.snapshot.value;

                                                  return InkWell(
                                                    child: Image.asset(
                                                      ImagesAndIcons.dislike,
                                                      scale: 25,
                                                      color: data["dislike"] == 0
                                                          ? Colors.black
                                                          .withOpacity(
                                                          .7)
                                                          : AppColors
                                                          .primary_color,
                                                    ),
                                                    onTap: () {
                                                      String token = controller
                                                              .box
                                                              .get("token") ??
                                                          "";
                                                      if (token.isEmpty) {
                                                        Get.bottomSheet(
                                                            bottomSheetWidget(
                                                                context));
                                                      } else {
                                                        controller.updataData(
                                                            object.id,
                                                            "dislike");
                                                      }
                                                    },
                                                  );
                                                }
                                                return Image.asset(
                                                  ImagesAndIcons.dislike,
                                                  scale: 25,
                                                  color: Colors.black
                                                      .withOpacity(.7),
                                                );
                                              })
                                          : InkWell(
                                              onTap: () {
                                                Get.bottomSheet(
                                                    bottomSheetWidget(context));
                                              },
                                              child: Image.asset(
                                                ImagesAndIcons.dislike,
                                                scale: 25,
                                                color: Colors.black
                                                    .withOpacity(.7),
                                              ),
                                            ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      StreamBuilder(
                                          stream: FirebaseDatabase.instance
                                              .reference()
                                              .child("BlogsCounts")
                                              .child(object.id)
                                              .onValue,
                                          builder: (context,
                                              AsyncSnapshot<Event> snap) {
                                            if (snap.hasData) {
                                              final data =
                                                  snap.data!.snapshot.value;

                                              return Text(
                                                data["dislike"].toString(),
                                                textScaleFactor: 1,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Colors.black.withOpacity(.3)),
                                              );
                                            }
                                            return Text("");
                                          }),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: InkWell(
                                    onTap: () {
                                      controller.shareArticle(object.title);
                                    },
                                    child: Image.asset(
                                      ImagesAndIcons.share,
                                      scale: 170,
                                      color: Colors.black.withOpacity(.7),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                controller.openDonateLink();
                              },
                              child: Container(
                                height: 35,
                                width: 100,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text("Donate",
                                    maxLines: 2,
                                    overflow: TextOverflow.clip,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 1.2))),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: AppColors.secondry_color,
                                      width: 1.5),
                                  color: AppColors.secondry_color,
                                ),
                              ),
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
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black.withOpacity(.8),
                              fontWeight: FontWeight.w600,
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
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(.7),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: .9,
                                    height: 1.5)));
                      },
                      itemCount: object.contents.length > 2
                          ? 2
                          : object.contents.length,
                      separatorBuilder: (_, index) {
                        return Text("");
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
                              //  color: Colors.green,
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
                                          letterSpacing: .9,
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
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Users Reviews",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(.8),
                            fontWeight: FontWeight.w600,
                            letterSpacing: .85),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    controller.isLoading
                        ? Container()
                        : controller.isLoginIn
                            ? Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        controller.userData["photoUrl"],
                                      ),
                                      radius: 20),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppColors
                                                .neuroverse_Backgroud_Color,
                                            width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: EdgeInsets.only(left: 5),
                                      child: TextField(
                                        controller: controller.reviewController,
                                        cursorColor: Colors.black,
                                        autofocus: false,
                                        maxLength: 50,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                letterSpacing: .5)),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        onSubmitted: (value) {
                                          print("onsubmiited fun was called");
                                          controller.addReview(object.id);
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Container(),
                    SizedBox(
                      height: 8,
                    ),
                    StreamBuilder(
                        stream: FirebaseDatabase.instance
                            .reference()
                            .child("Reviews")
                            .child(object.id)
                            .onValue,
                        builder: (context, AsyncSnapshot<Event> snap) {
                          if (snap.hasData) {
                            final data = snap.data!.snapshot.value;


                            List? dataKeys = [];
                            if (data == null) {
                            } else {
                              dataKeys = data.keys.toList();
                            }

                            //   print("keys length is  ${dataKeys.length}");
                            //  return Text("");
                            return data == null
                                ? Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "There is no comments for this blog,write your First comment for this Blog",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black.withOpacity(.8),
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: .85),
                                      ),
                                      textAlign: TextAlign.center,
                                    ))
                                : ListView.builder(
                                    primary: false,
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) {
                                      Map reviewData = data[dataKeys![index]];
                                      return Container(
                                          margin: EdgeInsets.only(bottom: 13),
                                          padding: EdgeInsets.only(bottom: 13),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black
                                                          .withOpacity(.1),
                                                      width: .5))),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        reviewData["imageUrl"]),
                                                    radius: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Text(
                                                            reviewData["userName"],
                                                            style:
                                                            GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                  fontSize: 13,
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                      .8),
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                  letterSpacing:
                                                                  .85),
                                                            ),
                                                          ),
                                                          //Text(reviewData["Date"]),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(reviewData["text"], style:
                                                      GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors
                                                              .black
                                                              .withOpacity(
                                                              .7),
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                        ),
                                                      ),)
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              ),

                                              controller.box.get("token") ==
                                                      reviewData["userId"]
                                                  ? IconButton(
                                                      onPressed: () {
                                                        controller.deleteReView(
                                                            object.id,
                                                            reviewData[
                                                                "docId"]);
                                                      },
                                                      icon: Icon(Icons.delete))
                                                  : Container(),
                                            ],
                                          ));
                                    },
                                    /*   separatorBuilder (_,index){


                              return Divider(color: Colors.red,);
                                },*/
                                    itemCount: dataKeys?.length,
                                  );
                          }
                          return Text("");
                        }),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
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
                      controller.loginToGoogle();
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
            // SizedBox(
            //   height: 15,
            // ),
            // Container(
            //   width: MediaQuery.of(context).size.width * .8,
            //   padding: EdgeInsets.only(
            //       top: 10,
            //       bottom: 10,
            //       left: MediaQuery.of(context).size.width * .1),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: AppColors.neuroverse_Backgroud_Color),
            //   alignment: Alignment.center,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         width: 30,
            //         height: 30,
            //         child: Image(
            //           image: AssetImage(ImagesAndIcons.fb),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text(
            //         "FaceBook",
            //         style: GoogleFonts.poppins(
            //             textStyle: TextStyle(
            //                 fontSize: 15,
            //                 color: Colors.black,
            //                 // fontWeight: FontWeight.w500,
            //                 letterSpacing: 1.0)),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                controller.loginToTwitter();
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
