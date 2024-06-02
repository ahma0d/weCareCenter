import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/bottom_page/medical_info_screen.dart';
import 'package:medical_u/controller/medical_info_controller.dart';
import '../../constant/app_asset.dart';
import '../../controller/visit_controller.dart';
import '../Search_result/Search_result.dart';

class Bottomtwo extends StatefulWidget {
  const Bottomtwo({Key? key}) : super(key: key);

  @override
  State<Bottomtwo> createState() => _BottomtwoState();
}

class _BottomtwoState extends State<Bottomtwo>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }
  // List<String> upcoming = [
  //   AppAssets.doctor3,
  //   AppAssets.doctor1,
  //   AppAssets.doctor1,
  // ];

  List title = [
    " عينية",
    "أذن حنجرة ",
    " عصبية ",
  ];

  @override
  Widget build(BuildContext context) {
    VisitController controller = Get.put(VisitController());
    MedicalController controller2 = Get.put(MedicalController());
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(

        child: GetBuilder<VisitController>(

         builder: (controller) =>  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      "Visits",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                    width: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Icon(
                      Icons.notifications_none,
                      size: 30,
                      color: Color(0xff475467),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 10,
              ),
              Column(
                children: List.generate(
                  controller.visitsList.length,
                        (index) => Padding(
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
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                      ),

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
                                          child: Text(controller.visitsList[index].clinic_model.name_ar,

                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children:  [
                                              Icon(Icons.circle,
                                                  color: controller.visitsList[index].type == 1? Colors.green :Colors.amber ,
                                                  size: 10,),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(controller.visitsList[index].type == 1?"Completed":"UnCompleted",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      fontSize: 14),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.calendar_month_sharp,
                                      color: Colors.grey, size: 20),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(controller.visitsList[index].d_start.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 12)),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      controller2.getMedicalData(id: controller.visitsList[index].id);

                                       Get.to(const MedicalInfoScreen(),transition: Transition.rightToLeft);
                                    },
                                    child: Container(
                                      width: 300,
                                      height: 44,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff1C208F),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text("View",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    )),
              ),
            ],
          ),
        ),
      ),


    );
  }
}