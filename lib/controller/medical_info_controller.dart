import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/api_config/api_config.dart';
import 'package:medical_u/api_config/app_const_data.dart';
import 'package:medical_u/model/medical_info/medical_info.dart';

class MedicalController extends GetxController {
  late Dio dio = Dio();
  MedicalInfoModel? medicalInfoModel ;
  getMedicalData({
    required int id,
  }) {
    dio.options.headers = {
      "Authorization": "Bearer $tokenData",
    };

    dio
        .post(
          medical_inf,
          data: {
            "visit": id,
          },
        )
        .then(
          (value) {
            print("hello 1");
            print(value.data);
            medicalInfoModel = MedicalInfoModel.fromJson(value.data);
            print("hello 2");
            print(medicalInfoModel!.dia.length);
            update();
          },
        )
        .catchError(
          (error) {
            print("hello 6");
            print(error.toString());
          },
        );
  }
}
