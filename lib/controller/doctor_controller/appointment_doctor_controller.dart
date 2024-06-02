import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:medical_u/api_config/api_config.dart';
import 'package:medical_u/api_config/app_const_data.dart';
import 'package:medical_u/model/appointment/appointment_doctor.dart';
import 'package:medical_u/model/appointment/today.dart';
import 'package:medical_u/model/upComing_model.dart';

class DoctorController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    getDoctorAppointment();
    getDoctorTodayAppointment();
    super.onInit();
  }
  late Dio dio = Dio();
  List<DoctorAppointment> doctorAppointment1 = [];

  void getDoctorAppointment() {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": tokenUse,
    };
    dio
        .get(doctor_appointent)
        .then(
          (value) {

            value.data['Appointments'].forEach((element){
              doctorAppointment1.add(DoctorAppointment.fromJson(element));
            });
           print(doctorAppointment1[0].appointmentDate);
           update();
          },

        )
        .catchError(
          (error) {
            print("hello 5");
            print(error.toString());
          },
        );
    update();
  }

  List<DoctorToday> doctorAppointment2 = [];
  void getDoctorTodayAppointment() {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": tokenUse,
    };
    dio
        .get(doctor_today_appointent)
        .then(
          (value) {

        value.data['Appointments'].forEach((element){
          doctorAppointment2.add(DoctorToday.fromJson(element));
        });
        print(doctorAppointment2[0].appointmentDate);
        update();
      },

    )
        .catchError(
          (error) {
        print("hello 5");
        print(error.toString());
      },
    );
    update();
  }
}
