import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/controller/home_controller.dart';
import 'package:medical_u/controller/question_controller.dart';

class Bottomthree extends StatefulWidget {
  const Bottomthree({Key? key}) : super(key: key);

  @override
  State<Bottomthree> createState() => _BottomthreeState();
}

class _BottomthreeState extends State<Bottomthree> {
  question_controller controller = Get.put(question_controller());
  HomeController homeController = Get.put(HomeController());
  var valueChoose;

  Map<int, String> clinic = {
    1: "العلاج الفيزيائي",
    3: "عينية",
    4: "اذن انف حنجرة",
    7: "صدرية",
    8: "توليد و نسائية",
    9: "عصبية",
    10: "عظمية",
    11: "أطفال",
    13: "تجميل",
    18: "قلبية",
  };
  var value;
  List<int> indexList = [];

  int IdReturn(String name) {
    int z = 0;
    switch (name) {
      case "العلاج الفيزيائي":
        z = 1;
        break;
      case "عينية":
        z = 3;
        break;
      case "اذن انف حنجرة":
        z = 4;
        break;
      case "صدرية":
        z = 7;
        break;
      case "توليد و نسائية":
        z = 8;
        break;
      case "عصبية":
        z = 9;
        break;
      case "عظمية":
        z = 10;
        break;
      case "أطفال":
        z = 11;
        break;
      case "تجميل":
        z = 13;
        break;
      case "قلبية":
        z = 18;
        break;
    }
    return z;
  }

  TextEditingController qController = TextEditingController();
  TextEditingController clinicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<question_controller>(
      init: question_controller(),
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white60,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text(
                  "Ask Question",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 850,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(controller.question_list.length,
                          (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Container(
                              height: 254,
                              width: 335,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                        offset: Offset(8, 6)),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, right: 30),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20,
                                            ),
                                            // child: CircleAvatar(
                                            //   maxRadius: 35,
                                            //   // backgroundImage:
                                            //   //     AssetImage(upcoming[index]),
                                            // ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, bottom: 5),
                                                child: Text(
                                                    controller
                                                        .question_list[index]
                                                        .clinic
                                                        .name_ar
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black,
                                                        fontSize: 20)),
                                              ),
                                              SingleChildScrollView(

                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 10),
                                                  child: Text(
                                                      controller
                                                          .question_list[index]
                                                          .quistion,
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16)),
                                                ),
                                                scrollDirection: Axis.horizontal,
                                              ),
                                              // Padding(
                                              //   padding:
                                              //   const EdgeInsets.only(
                                              //       left: 5, top: 5),
                                              //   child: Row(
                                              //     mainAxisAlignment:
                                              //     MainAxisAlignment
                                              //         .center,
                                              //     children: const [
                                              //       Icon(Icons.star,
                                              //           color:
                                              //           Color(0xff36C8FF),
                                              //           size: 20),
                                              //       Text("4.8",
                                              //           style: TextStyle(
                                              //               fontWeight:
                                              //               FontWeight
                                              //                   .w500,
                                              //               fontSize: 14)),
                                              //     ],
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Divider(
                                        color: Colors.grey,
                                        endIndent: 20,
                                        indent: 20),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),

                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 10, left: 10),
                                    child: Text(
                                        controller.question_list[index]
                                                    .answer !=
                                                null
                                            ? controller
                                                .question_list[index].answer
                                                .toString()
                                            : "There is No answer",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16)),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //   MainAxisAlignment.center,
                                  //   children: [
                                  //     Icon(Icons.calendar_month_sharp,
                                  //         color: Colors.grey, size: 20),
                                  //     SizedBox(
                                  //       width: 5,
                                  //     ),
                                  //     Text(
                                  //         "Date",
                                  //         style: TextStyle(
                                  //             fontWeight: FontWeight.w500,
                                  //             color: Colors.grey,
                                  //             fontSize: 12)),
                                  //     SizedBox(
                                  //       width: 20,
                                  //     ),
                                  //     Icon(Icons.access_time,
                                  //         color: Colors.grey, size: 20),
                                  //     SizedBox(
                                  //       width: 5,
                                  //     ),
                                  //     Text(
                                  //   "Form",
                                  //         style: TextStyle(
                                  //             fontWeight: FontWeight.w500,
                                  //             color: Colors.grey,
                                  //             fontSize: 12)),
                                  //     SizedBox(
                                  //       width: 15,
                                  //     ),
                                  //
                                  //     SizedBox(
                                  //       width: 5,
                                  //     ),
                                  //   ],
                                  // ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //
                                      // Container(
                                      //   width: 140,
                                      //   height: 44,
                                      //   decoration: BoxDecoration(
                                      //       color: Colors.red,
                                      //       borderRadius:
                                      //       BorderRadius.circular(10)),
                                      //   child:  Center(
                                      //       child: Text("Delete",
                                      //           style: TextStyle(
                                      //               fontWeight:
                                      //               FontWeight.w600,
                                      //               fontSize: 12))
                                      //   ),
                                      // ) ,
                                      // const SizedBox(
                                      //   width: 20,
                                      // ),
                                      // Container(
                                      //   width: 140,
                                      //   height: 44,
                                      //   decoration: BoxDecoration(
                                      //       color:
                                      //       const Color(0xff1C208F),
                                      //       borderRadius:
                                      //       BorderRadius.circular(
                                      //           10)),
                                      //   child: const Center(
                                      //     child: Text("Reschedule",
                                      //         style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight:
                                      //             FontWeight.w600,
                                      //             fontSize: 12)),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ],
                              )),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                    )),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: DropdownButton(
                  isExpanded: true,
                  value: valueChoose,
                  underline: SizedBox(
                    width: 0.0,
                    height: 0.0,
                  ),
                  hint: Text("choose  clinic"),
                  items: clinic.values
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      valueChoose = value;
                      print(clinic.keys.val(valueChoose).toString());
                      // print(clinic.keys.where((element) => clinic.values == valueChoose).toString());
                    });
                  },
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: qController,
                decoration: InputDecoration(
                    hintText: "Question",
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.patient_ask(
                          ask: qController.text,
                          section : IdReturn(valueChoose),
                          context: context,
                        );
                        qController.clear();
                      },
                      icon: Icon(Icons.send),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                    ))),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
