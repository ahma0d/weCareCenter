import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/constant/app_asset.dart';
import 'package:medical_u/controller/home_controller.dart';

class Profilepatient extends StatefulWidget {
  const Profilepatient({Key? key}) : super(key: key);

  @override
  State<Profilepatient> createState() => _ProfilepatientState();
}

class _ProfilepatientState extends State<Profilepatient> {

  HomeController controller = Get.put(HomeController());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     nameController.text = controller.profileModel!.doctorModel != null ? controller.profileModel!.doctorModel!.userModel.name.toString() : controller.profileModel!.patientModel!.user.name.toString() ;
     emailController.text = controller.profileModel!.doctorModel != null ? controller.profileModel!.doctorModel!.userModel.email.toString() : controller.profileModel!.patientModel!.user.email.toString() ;
     phoneController.text = controller.profileModel!.doctorModel != null ? controller.profileModel!.doctorModel!.phoneNumber.toString() : controller.profileModel!.patientModel!.mobile.toString() ;
     addressController.text = controller.profileModel!.doctorModel != null ? 'Damas' : controller.profileModel!.patientModel!.address.toString() ;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 360,
                      color: const Color(0xff1C208F),
                    ),
                     Padding(
                      padding: EdgeInsets.only(top: 60, left: 25),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 62, left: 60),
                      child: Text("Profile",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 60, left: 300),
                      child: Icon(
                        Icons.edit,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200, left: 125),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        maxRadius: 50,
                        backgroundImage: AssetImage(AppAssets.videocall1),
                      ),
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Change Photo",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff1C208F)),
              ),
            ),
            const ListTile(
                title: Text(
              "Name",
              style: TextStyle(
                  color: Color(0xff475467),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )),
            Container(
              margin: const EdgeInsets.only(bottom: 0),
              width: 335,
              height: 52,
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff1C208F), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffD0D5DD), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'Your Name',
                ),
              ),
            ),
            const ListTile(
                title: Text(
              "Email",
              style: TextStyle(
                  color: Color(0xff475467),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )),
            Container(

              margin: const EdgeInsets.only(bottom: 0),
              width: 335,
              height: 52,
              child: TextField(
                controller: emailController ,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff1C208F), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffD0D5DD), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'Your Email',
                ),
              ),
            ),
            const ListTile(
                title: Text(
              "Mobile Number",
              style: TextStyle(
                  color: Color(0xff475467),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )),
            Container(
              margin: const EdgeInsets.only(bottom: 0),
              width: 335,
              height: 52,
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff1C208F), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffD0D5DD), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'Your Mobile Number',
                ),
              ),
            ),
            const ListTile(
              title: Text(
                "Address",
                style: TextStyle(
                    color: Color(0xff475467),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 0),
              width: 335,
              height: 52,
              child: TextField(
                controller: addressController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff1C208F), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffD0D5DD), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'Your Address',
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(Icons.logout),
                SizedBox(width: 10,),
                Text(
                  "Log Out",
                  style: TextStyle(
                      color: Color(0xff475467),
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
