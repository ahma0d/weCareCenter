import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:medical_u/controller/home_controller.dart';
import '../api_config/api_config.dart';
import '../api_config/app_const_data.dart';
import '../model/Model/quistione_model.dart';

class question_controller extends GetxController {
  HomeController controller = Get.put(HomeController());
  void onInit() {
    patient_que();
    super.onInit();
  }

  late Dio dio = Dio();
  List<Quistion_model> question_list = [];

  List<Quistion_model> patient_que() {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    dio.get(question_p).then(
      (value) {
        question_list = [];
        value.data['questions'].forEach((elements) {
          question_list.add(Quistion_model.fromJson(elements));
          update();
        });
        print(value.data);
      },
    ).catchError(
      (error) {
        print('hello 2');
        print(error.toString());
        update();
      },
    );
    return question_list;
  }

  patient_ask({required String ask, required int section, context}) {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    dio.post(
      question_ask,
      data: {"Question": ask, "section": section},
    ).then(
      (value) {
        if (value.data['success'] == true) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Question send successfully..",
            ),
            backgroundColor: Colors.green,
          ));
          patient_que();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Cannot send question",
            ),
            backgroundColor: Colors.red,
          ));
        }
      },
    ).catchError(
      (error) {
        print('hello 2');
        print(error.toString());
        update();
      },
    );
    return question_list;
  }

  void sendData({
  required int doctor ,
  required  rating ,
    context
}) {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    dio
        .post(
      review,
          data: {
            "doctor": doctor,
            "rating": rating,
            "typeUser": 0,
          },
        )
        .then(
          (value) {
            print("hello 1");
            if(value.data['success'] == true){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Review Successfully",
                ),
                backgroundColor: Colors.green,
              )
              );
            controller.getFamousDoctor();
            print("hello 2");
              update();
            }
            update();
          },
        )
        .catchError(
          (error) {
            print("hello 3");
            print(error.toString());
          },
        );
  }
}
