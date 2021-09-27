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
                                Text(
                                  "1.$q1",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1.2)),
                                ),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(q2),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ2Quiz(1, "True");
                                  },
                                  child: controller.isShowAnswers
                                      ? Container(
                                          color: Colors.yellow,
                                          child: Text("True"))
                                      : Container(
                                          color: controller.q2_ans1
                                              ? AppColors.primary_color
                                              : Colors.white,
                                          child: Text("True")),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ2Quiz(2, "False");
                                    },
                                    child: Container(
                                        color: controller.q2_ans2
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("False"))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(q3),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ3Quiz(
                                              1, "Phonic noises");
                                    },
                                    child: Container(
                                        color: controller.q3_ans1
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("Phonic noises"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ3Quiz(
                                              2, "Yelling");
                                    },
                                    child: Container(
                                        color: controller.q3_ans2
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("Yelling"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ3Quiz(
                                            3, "Head jerking");
                                  },
                                  child: controller.isShowAnswers
                                      ? Container(
                                          color: Colors.yellow,
                                          child: Text("Head jerking"))
                                      : Container(
                                          color: controller.q3_ans3
                                              ? AppColors.primary_color
                                              : Colors.white,
                                          child: Text("Head jerking")),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ3Quiz(
                                              4, "Throat clearing");
                                    },
                                    child: Container(
                                        color: controller.q3_ans4
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("Throat clearing"))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(q4),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ4Quiz(1, "27%");
                                    },
                                    child: Container(
                                        color: controller.q4_ans1
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("27%"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ4Quiz(2, "35%");
                                  },
                                  child: controller.isShowAnswers
                                      ? Container(
                                          color: Colors.yellow,
                                          child: Text("35%"))
                                      : Container(
                                          color: controller.q4_ans2
                                              ? AppColors.primary_color
                                              : Colors.white,
                                          child: Text("35%")),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ4Quiz(3, "43%");
                                    },
                                    child: Container(
                                        color: controller.q4_ans3
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("43%"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ4Quiz(4, "77%");
                                    },
                                    child: Container(
                                        color: controller.q4_ans4
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("77%"))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(q5),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ5Quiz(1, "True");
                                    },
                                    child: Container(
                                        color: controller.q5_ans1
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("True"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ5Quiz(2, "False");
                                  },
                                  child: controller.isShowAnswers
                                      ? Container(
                                          color: Colors.yellow,
                                          child: Text("False"))
                                      : Container(
                                          color: controller.q5_ans2
                                              ? AppColors.primary_color
                                              : Colors.white,
                                          child: Text("False")),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(q6),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ6Quiz(
                                            1, "Manic,Depressive");
                                  },
                                  child: controller.isShowAnswers
                                      ? Container(
                                          color: Colors.yellow,
                                          child: Text("Manic,Depressive"))
                                      : Container(
                                          color: controller.q6_ans1
                                              ? AppColors.primary_color
                                              : Colors.white,
                                          child: Text("Manic,Depressive")),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ6Quiz(
                                              2, "Depressive,Manic");
                                    },
                                    child: Container(
                                        color: controller.q6_ans2
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("Depressive,Manic"))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(q7),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ7Quiz(1, "True");
                                  },
                                  child: controller.isShowAnswers
                                      ? Container(
                                          color: Colors.yellow,
                                          child: Text("True"),
                                        )
                                      : Container(
                                          color: controller.q7_ans1
                                              ? AppColors.primary_color
                                              : Colors.white,
                                          child: Text("True"),
                                        ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ7Quiz(2, "False");
                                    },
                                    child: Container(
                                        color: controller.q7_ans2
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("False"))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(q8),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ8Quiz(
                                              1, "Vocal,Motal");
                                    },
                                    child: Container(
                                        color: controller.q8_ans1
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("Vocal,Motal"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ8Quiz(
                                            2, "Motal,Vocal");
                                  },
                                  child: controller.isShowAnswers
                                      ? Container(
                                          color: Colors.yellow,
                                          child: Text("Motal,Vocal"))
                                      : Container(
                                          color: controller.q8_ans2
                                              ? AppColors.primary_color
                                              : Colors.white,
                                          child: Text("Motal,Vocal")),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          controller.isShowAnswers
                              ? InkWell(
                                  onTap: () {
                                    controller.updateQuizStatus(false);
                                    controller.updateShowAnswerStatus(false);
                                    controller.resetAllQuizValues();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(30),
                                    color: Colors.blue,
                                    child: Text("Finish"),
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
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
                                              "Selet all answers before submitting",
                                          middleText: "Hello world!",
                                          backgroundColor: Colors.green,
                                          titleStyle:
                                              TextStyle(color: Colors.white),
                                          middleTextStyle:
                                              TextStyle(color: Colors.white),
                                          cancelTextColor: Colors.white,
                                          confirmTextColor: Colors.white,
                                          buttonColor: Colors.red,
                                          barrierDismissible: false,
                                          radius: 50,
                                          content: Column(
                                            children: [
                                              InkWell(
                                                child: Container(
                                                    child: Text("ok")),
                                                onTap: () {
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
                                            "Out of 8 questions $count are correct",
                                        middleText: "Hello world!",
                                        backgroundColor: Colors.green,
                                        titleStyle:
                                            TextStyle(color: Colors.white),
                                        middleTextStyle:
                                            TextStyle(color: Colors.white),
                                        cancelTextColor: Colors.white,
                                        confirmTextColor: Colors.white,
                                        buttonColor: Colors.red,
                                        barrierDismissible: false,
                                        radius: 50,
                                        content: Column(
                                          children: [
                                            InkWell(
                                              child:
                                                  Container(child: Text("ok")),
                                              onTap: () {
                                                controller
                                                    .updateShowAnswerStatus(
                                                        true);
                                                Get.back();
                                              },
                                            ),
                                          ],
                                        ));

                                    // controller.updateShowAnswerStatus(true);
                                    //
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(30),
                                    color: Colors.blue,
                                    child: Text("submit"),
                                  ),
                                )
                        ],
                      ),
                    ),
                  ))
                : Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.updateQuizStatus(true);
                            },
                            child: Container(
                              width: 150,
                              height: 50,
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
}
//7 years old
