import '../visit_model.dart';

class Quistion_model {
  final int user_id;
  final int id;
  final String quistion;
  String? answer;
  final int section;
  final Clinic_model clinic;

  Quistion_model(
      {required this.user_id,
      required this.id,
      this.answer,
      required this.clinic,
      required this.quistion,
      required this.section});

  factory Quistion_model.fromJson(Map<String, dynamic> json) {
    return Quistion_model(
      user_id: json['user_id'],
      id: json['id'],
      quistion: json['Question'],
      answer: json['answer'] != null ? json['answer'] : null,
      section: json['section'],
      clinic: Clinic_model.fromJson(json['gnr_m_clinics']),
    );
  }
}
