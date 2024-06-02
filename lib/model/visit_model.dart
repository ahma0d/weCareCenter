class visitsModel {
  final int id;
  final int patient;
  final int type;
  final String d_start;
  final int status;
  String? note;
  final int sub_status;
  final int new_pat;
  final Clinic_model clinic_model;

  visitsModel(
      {required this.id,
      required this.type,
      required this.patient,
      required this.d_start,
      required this.status,
      required this.sub_status,
      required this.new_pat,
      required this.clinic_model,
      this.note});

  factory visitsModel.fromJson(Map<String, dynamic> json) {
    return visitsModel(
      id: json['id'],
      patient: json['patient'],
      type: json['type'],
      d_start: json['d_start'],
      status: json['status'],
      note: json['note'] != null ? json['note'] : null,
      sub_status: json['sub_status'],
      new_pat: json['new_pat'],
        clinic_model: Clinic_model.fromJson(json['gnr_m_clinics']),
    );
  }
}

class Clinic_model {
  final int id;
  final String name_ar;
  int? type;

  Clinic_model({required this.id, required this.name_ar, required this.type});

  factory Clinic_model.fromJson(Map<String, dynamic> json) {
    return Clinic_model(
      id: json['id'],
      name_ar: json['name_ar'],
      type: json['type'] != null ? json['type'] : null,
    );
  }
}
