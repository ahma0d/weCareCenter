import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:medical_u/api_config/api_config.dart';
import 'package:medical_u/api_config/app_const_data.dart';
import 'package:medical_u/model/visit_model.dart';

class VisitController extends GetxController{
  void onInit() {
    getVisits();
    super.onInit();
  }
visitsModel? vis ;

  late Dio dio = Dio();
  List<visitsModel> visitsList = [];
  late List<visitsModel> list =[];


  List<visitsModel> getVisits(){

    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    dio.get(visit_api).then(
          (value) {
            visitsList= [];
            print(value.data['visits']);
        value.data['visits'].forEach((elements){
          visitsList.add(visitsModel.fromJson(elements));
          update();
        });
        print(visitsList[0].patient.toString());
      },

    ).catchError(
          (error) {
        print(error.toString());
      },
    );
    return visitsList ;
  }
  }










