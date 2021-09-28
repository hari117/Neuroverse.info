import 'package:neuroverse/helpers/imports_and_exports.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuizScreen extends GetView<QuizScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<QuizScreenController>(
        init: QuizScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 1,
              title: Text(
                "Checkpoint Quiz",
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
            body: controller.isQuizStarted
                ? Scaffold(
                    body: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.neuroverse_Backgroud_Color,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                questionTitle("1.$q1"),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ1Quiz(
                                            1, "7 years old");
                                  },
                                  child: quizOptionsWidget(
                                      "7 years old", controller.q1_ans1),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ1Quiz(
                                              2, "4 years old");
                                    },
                                    child: quizOptionsWidget(
                                        "4 years old", controller.q1_ans2)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ1Quiz(
                                              3, "12 years old");
                                    },
                                    child: quizOptionsWidget(
                                        "12 years old", controller.q1_ans3)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ1Quiz(
                                              4, "3 years old");
                                    },
                                    child: controller.isShowAnswers
                                        ? answerWidget("3 years old")
                                        : quizOptionsWidget("12 years old",
                                            controller.q1_ans4)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.neuroverse_Backgroud_Color,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                questionTitle("2.$q2"),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ2Quiz(1, "True");
                                  },
                                  child: controller.isShowAnswers
                                      ? answerWidget("true")
                                      : quizOptionsWidget(
                                          "True", controller.q2_ans1),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ2Quiz(2, "False");
                                  },
                                  child: quizOptionsWidget(
                                      "False", controller.q2_ans2),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.neuroverse_Backgroud_Color,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                questionTitle("3.$q3"),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ3Quiz(
                                              1, "Phonic noises");
                                    },
                                    child: quizOptionsWidget(
                                        "Phonic noises", controller.q3_ans1)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ3Quiz(
                                              2, "Yelling");
                                    },
                                    child: quizOptionsWidget(
                                        "Yelling", controller.q3_ans2)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ3Quiz(
                                              3, "Head jerking");
                                    },
                                    child: controller.isShowAnswers
                                        ? answerWidget("Head jerking")
                                        : quizOptionsWidget("Head jerking",
                                            controller.q3_ans3)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ3Quiz(
                                              4, "Throat clearing");
                                    },
                                    child: quizOptionsWidget(
                                        "Throat clearing", controller.q3_ans4)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.neuroverse_Backgroud_Color,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                questionTitle("4.$q4"),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ4Quiz(1, "27%");
                                    },
                                    child: quizOptionsWidget(
                                        "27%", controller.q4_ans1)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ4Quiz(2, "35%");
                                    },
                                    child: controller.isShowAnswers
                                        ? answerWidget("35%")
                                        : quizOptionsWidget(
                                            "35%", controller.q4_ans2)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ4Quiz(3, "43%");
                                    },
                                    child: quizOptionsWidget(
                                        "43%", controller.q4_ans3)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ4Quiz(4, "77%");
                                    },
                                    child: quizOptionsWidget(
                                        "77%", controller.q4_ans4)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.neuroverse_Backgroud_Color,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                questionTitle("5.$q5"),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ5Quiz(1, "True");
                                    },
                                    child: quizOptionsWidget(
                                        "True", controller.q5_ans1)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ5Quiz(2, "False");
                                    },
                                    child: controller.isShowAnswers
                                        ? answerWidget("False")
                                        : quizOptionsWidget(
                                            "False", controller.q5_ans2)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.neuroverse_Backgroud_Color,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                questionTitle("6.$q6"),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ6Quiz(
                                              1, "Manic,Depressive");
                                    },
                                    child: controller.isShowAnswers
                                        ? answerWidget("Manic,Depressive")
                                        : quizOptionsWidget("Manic,Depressive",
                                            controller.q6_ans1)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ6Quiz(
                                              2, "Depressive,Manic");
                                    },
                                    child: quizOptionsWidget("Depressive,Manic",
                                        controller.q6_ans2)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.neuroverse_Backgroud_Color,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                questionTitle("7.$q7"),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ7Quiz(1, "True");
                                    },
                                    child: controller.isShowAnswers
                                        ? answerWidget("True")
                                        : quizOptionsWidget(
                                            "True", controller.q7_ans1)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ7Quiz(2, "False");
                                    },
                                    child: quizOptionsWidget(
                                        "False", controller.q7_ans2)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.neuroverse_Backgroud_Color,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                questionTitle("8.$q8"),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ8Quiz(
                                              1, "Vocal,Motal");
                                    },
                                    child: quizOptionsWidget(
                                        "Vocal,Motal", controller.q8_ans1)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ8Quiz(
                                              2, "Motal,Vocal");
                                    },
                                    child: controller.isShowAnswers
                                        ? answerWidget("Motal,Vocal")
                                        : quizOptionsWidget(
                                            "Motal,Vocal", controller.q8_ans2)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          controller.isShowAnswers
                              ? InkWell(
                                  onTap: () {
                                    controller.updateQuizStatus(false);
                                    controller.updateShowAnswerStatus(false);
                                    controller.resetAllQuizValues();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 16,right: 15,top: 10,bottom: 10),
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color:Color(0xFFa8c2ff),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Text("Start Quiz Again ?",style: GoogleFonts.palanquin(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5)),),
                                  ),
                                )
                              : InkWell(
                                  onTap: ()
                                  {
                                    // validate all aneswers
                                    print("submit button is clicked");
                                    int count = 0;
                                    bool isAllMarked = true;
                                    controller.userSelectedAnswers
                                        .forEach((key, value) {
                                      if (controller.userSelectedAnswers[key] ==
                                          "") {
                                        print("condition matehed");
                                        isAllMarked = false;
                                      }
                                    });

                                    if (!isAllMarked) {
                                      Get.defaultDialog(
                                          title:
                                              "Alert Message !",
                                          backgroundColor: Colors.white,
                                          titleStyle:
                                              TextStyle(color: Colors.black),
                                          middleTextStyle:
                                              TextStyle(color: Colors.white),
                                          cancelTextColor: Colors.white,
                                          confirmTextColor: Colors.white,
                                          buttonColor: Colors.red,
                                          barrierDismissible: false,
                                          radius: 5,
                                          content: Column(
                                            children: [
                                              //Selet all answers before submitting
                                              Container(
                                                  child: Text("Selet all answers before submit", style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w400,
                                                      )),textAlign: TextAlign.center,),),
                                              SizedBox(height: 15,),
                                              InkWell(
                                                child: Container(

                                                    child: Text("ok",  style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 13,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            letterSpacing: 1.5)),),

                                                  decoration: BoxDecoration(

                                                    border: Border.all(color: Colors.blue,width: 1),
                                                    color: AppColors.neuroverse_Backgroud_Color,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 10,),
                                                  alignment: Alignment.center,
                                                  width: 100,
                                                  height:35,
                                                ),
                                                onTap: () {
                                                 // controller.resetAllQuizValues();
                                                  Get.back();
                                                },
                                              ),
                                            ],
                                          ));
                                      return;
                                    }
                                    // validate all answeres

                                    controller.userSelectedAnswers
                                        .forEach((key, value) {
                                      if (controller.userSelectedAnswers[key] ==
                                          ans[key]) {
                                        count++;
                                      }
                                    });
                                    Get.defaultDialog(
                                        title:
                                            "Results",
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
                                            //Out of 8 questions $count are correct
                                            Container(
                                              child: Text("Out of 8 questions $count are correct", style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  )),textAlign: TextAlign.center,),),
                                            SizedBox(height: 15,),
                                            InkWell(
                                              child: Container(

                                                child: Text("ok",  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                        letterSpacing: 1.5)),),

                                                decoration: BoxDecoration(

                                                  border: Border.all(color: Colors.blue,width: 1),
                                                  color: AppColors.neuroverse_Backgroud_Color,
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 10,),
                                                alignment: Alignment.center,
                                                width: 100,
                                                height:35,
                                              ),
                                              onTap: () {
                                                controller.updateShowAnswerStatus(true);
                                                Get.back();


                                              },
                                            ),
                                          ],
                                        ));

                                    // controller.updateShowAnswerStatus(true);
                                    //
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 16,right: 15,top: 10,bottom: 10),
                                    width: double.infinity,
                                     alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color:Color(0xFF68BD43),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Text("Submit",style: GoogleFonts.palanquin(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1.5)),),
                                  ),
                                ),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ))
                : Scaffold(
                    body: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Container(
                              width: double.infinity,
                              height: 190,
                              child: Image(
                                image: AssetImage(ImagesAndIcons.quiz_image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                              onTap: () {
                                controller.updateQuizStatus(true);
                              },
                              child: Container(
                                width: 150,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color(0xFFa8c2ff),
                                    borderRadius: BorderRadius.circular(5)),
                                alignment: Alignment.center,
                                child: Text(
                                  "Start quiz",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          );
        });
  }

  onSubmit(controller) {
    int count = 0;
    controller.userSelectedAnswers.forEach((key, value) {
      if (controller.userSelectedAnswers[key] == "")
        Get.dialog(Container(
          width: 200,
          height: 150,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("fill all answers and then submit"),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.ac_unit))
            ],
          ),
        ));
    });

    // validate all answeres
    controller.userSelectedAnswers.forEach((key, value) {
      if (controller.userSelectedAnswers[key] == ans[key]) {}
    });

    controller.updateShowAnswerStatus(true);
  }

  Widget customDialogBox() {
    return Container(
      width: 200,
      height: 150,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("fill all answers and then submit"),
          InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.ac_unit))
        ],
      ),
    );
  }

  Widget quizOptionsWidget(String name, bool value) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: value ? AppColors.primary_color.withOpacity(.4) : Colors.white,
      ),
      child: Text(
        name,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2)),
      ),
    );
  }

  Widget answerWidget(String name) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xFFd4ff94)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.check,
              color: Colors.black,
              size: 25,
            ),
          )
        ],
      ),
    );
  }

  Widget questionTitle(String name) {
    return Text(
      name,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.2)),
    );
  }
}
//7 years old
