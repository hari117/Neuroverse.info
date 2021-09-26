import 'package:neuroverse/helpers/imports_and_exports.dart';

class QuizScreen extends GetView<QuizScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<QuizScreenController>(
        init: QuizScreenController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Checkpoint Quiz"),
            ),
            body: controller.isQuizStarted
                ? Scaffold(
                    body: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(q1),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ1Quiz(
                                              1, "7 years old");
                                    },
                                    child: Container(
                                        color: controller.q1_ans1
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("7 years old"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ1Quiz(
                                              2, "4 years old");
                                    },
                                    child: Container(
                                        color: controller.q1_ans2
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("4 years old"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      controller.isShowAnswers
                                          ? () {}
                                          : controller.updateQ1Quiz(
                                              3, "12 years old");
                                    },
                                    child: Container(
                                        color: controller.q1_ans3
                                            ? AppColors.primary_color
                                            : Colors.white,
                                        child: Text("12 years old"))),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isShowAnswers
                                        ? () {}
                                        : controller.updateQ1Quiz(
                                            4, "3 years old");
                                  },
                                  child: controller.isShowAnswers
                                      ? Container(
                                          color: Colors.yellow,
                                          child: Text("3 years old"))
                                      : Container(
                                          color: controller.q1_ans4
                                              ? AppColors.primary_color
                                              : Colors.white,
                                          child: Text("3 years old")),
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
                          controller.isShowAnswers? InkWell(
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
                          )  :InkWell(
                            onTap: () {
                              // validate all aneswers
                              print("submit button is clicked");
                              int count = 0;
                              bool isAllMarked=true;
                              controller.userSelectedAnswers
                                  .forEach((key, value) {
                                if (controller.userSelectedAnswers[key] == "") {
                                  print("condition matehed");
                                  isAllMarked=false;

                                }
                              });

                              if(!isAllMarked)
                                {
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
                                            child: Container(child: Text("ok")),
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
                                  count ++;
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
                                        child: Container(child: Text("ok")),
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
                      child: InkWell(
                        onTap: () {
                          controller.updateQuizStatus(true);
                        },
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Text("Start quiz"),
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
}
