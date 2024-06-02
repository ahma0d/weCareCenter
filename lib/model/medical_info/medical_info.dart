class MedicalInfoModel {
  bool? success;

  List<ServicesModel> services = [];

  PatientModelInfo? patient_info ;

  List<Dia10Model> dia10 = [];

  List<PatientModel> patient_model = [];

  int? patientId;

  List<MedicalHas> medical_has = [];

  List<NoteModel> note = [];

  List<StrModel> str = [];

  List<ComModel> com = [];

  List<ClnModel> cln = [];

  List<DiaModel> dia = [];

  MedicalInfoModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    patientId = json['patientId'];
    patient_info = json['patients_medical_info'] != null
        ? PatientModelInfo.fromJson(json['patients_medical_info'])
        : null;

    json['services'] != null
        ? json['services'].forEach((element) {
            services.add(ServicesModel.fromJson(element));
          })
        : [];

    json['dia10'] != ""
        ? json['dia10'].forEach((element) {
            dia10.add(Dia10Model.fromJson(element));
          })
        : [];

    json['patient'] != null
        ? json['patient'].forEach((element) {
            patient_model.add(PatientModel.fromJson(element));
          })
        : [];

    json['cln_m_medical_his_cats'] != null
        ? json['cln_m_medical_his_cats'].forEach((element) {
            medical_has.add(MedicalHas.fromJson(element));
          })
        : [];

    json['note'] != null
        ? json['note'].forEach((element) {
            note.add(NoteModel.fromJson(element));
          })
        : [];

    json['com'] != null
        ? json['com'].forEach((element) {
            com.add(ComModel.fromJson(element));
          })
        : [];

    json['str'] != null
        ? json['str'].forEach((element) {
            str.add(StrModel.fromJson(element));
          })
        : [];

    json['cln'] != null
        ? json['cln'].forEach((element) {
            cln.add(ClnModel.fromJson(element));
          })
        : [];

    json['dia'] != ""
        ? json['dia'].forEach((element) {
            dia.add(DiaModel.fromJson(element));
          })
        : [];
  }
}

class ServicesModel {
  final int id;

  String? code;

  final String name_ar;

  final int clinic_id;

  ServicesModel({
    required this.id,
    this.code,
    required this.name_ar,
    required this.clinic_id,
  });

  factory ServicesModel.fromJson(Map<String, dynamic> json) {
    return ServicesModel(
      id: json['id'],
      name_ar: json['name_ar'],
      clinic_id: json['clinic'],
      code: json['code'] ?? "",
    );
  }
}

class PatientModel {
  final int id;

  int? cat;

  final String name_ar;

  final int s_date;

  final int e_date;

  final int num;

  final int note;

  final int alert;

  int? active;

  PatientModel({
    required this.id,
    this.cat,
    required this.name_ar,
    required this.s_date,
    required this.e_date,
    this.active,
    required this.alert,
    required this.note,
    required this.num,
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) {
    return PatientModel(
        id: json['id'],
        cat: json['cat'] != null ? json['cat'] : null,
        name_ar: json['name_ar'],
        s_date: json['s_date'],
        e_date: json['e_date'],
        active: json['active'] != null ? json['active'] : 0,
        alert: json['alert'],
        note: json['note'],
        num: json['num']);
  }
}

class MedicalHas {
  final int id;

  final String name_ar;

  final int s_date;

  final int e_date;

  final int num;

  final int active;

  final int alert;

  final int note;

  final int year;

  final int ord;

  final int act;

  MedicalHas({
    required this.id,
    required this.name_ar,
    required this.s_date,
    required this.e_date,
    required this.num,
    required this.active,
    required this.alert,
    required this.note,
    required this.year,
    required this.ord,
    required this.act,
  });

  factory MedicalHas.fromJson(Map<String, dynamic> json) {
    return MedicalHas(
      id: json['id'],
      name_ar: json['name_ar'],
      s_date: json['s_date'],
      e_date: json['e_date'],
      num: json['num'],
      active: json['active'],
      alert: json['alert'],
      note: json['note'],
      year: json['year'],
      ord: json['ord'],
      act: json['act'],
    );
  }
}

class NoteModel {
  final int id;

  int? doc;

  final int visit;

  int? patient;

  String? val;

  dynamic date;

  NoteModel({
    required this.id,
    required this.visit,
    this.date,
    this.doc,
    this.patient,
    this.val,
  });

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      id: json['id'],
      visit: json['visit'],
      date: json['date'] != null ? json['date'] : null,
      doc: json['doc'] != null ? json['doc'] : null,
      patient: json['patient'] != null ? json['patient'] : null,
      val: json['val'] != null ? json['val'] : null,
    );
  }
}

class ComModel {
  final int id;

  int? doc;

  final int visit;

  int? patient;

  String? val;

  dynamic date;

  ComModel({
    required this.id,
    required this.visit,
    this.date,
    this.doc,
    this.patient,
    this.val,
  });

  factory ComModel.fromJson(Map<String, dynamic> json) {
    return ComModel(
      id: json['id'],
      visit: json['visit'],
      date: json['date'] != null ? json['date'] : null,
      doc: json['doc'] != null ? json['doc'] : null,
      patient: json['patient'] != null ? json['patient'] : null,
      val: json['val'] != null ? json['val'] : null,
    );
  }
}

class StrModel {
  final int id;

  int? doc;

  final int visit;

  int? patient;

  String? val;

  dynamic date;

  StrModel({
    required this.id,
    required this.visit,
    this.date,
    this.doc,
    this.patient,
    this.val,
  });

  factory StrModel.fromJson(Map<String, dynamic> json) {
    return StrModel(
      id: json['id'],
      visit: json['visit'],
      date: json['date'] != null ? json['date'] : null,
      doc: json['doc'] != null ? json['doc'] : null,
      patient: json['patient'] != null ? json['patient'] : null,
      val: json['val'] != null ? json['val'] : null,
    );
  }
}

class ClnModel {
  final int id;

  int? doc;

  final int visit;

  int? patient;

  String? val;

  dynamic date;

  ClnModel({
    required this.id,
    required this.visit,
    this.date,
    this.doc,
    this.patient,
    this.val,
  });

  factory ClnModel.fromJson(Map<String, dynamic> json) {
    return ClnModel(
      id: json['id'],
      visit: json['visit'],
      date: json['date'] != null ? json['date'] : null,
      doc: json['doc'] != null ? json['doc'] : null,
      patient: json['patient'] != null ? json['patient'] : null,
      val: json['val'] != null ? json['val'] : null,
    );
  }
}

class DiaModel {
  final int id;

  int? doc;

  final int visit;

  int? patient;

  String? val;

  dynamic date;

  DiaModel({
    required this.id,
    required this.visit,
    this.date,
    this.doc,
    this.patient,
    this.val,
  });

  factory DiaModel.fromJson(Map<String, dynamic> json) {
    return DiaModel(
      id: json['id'],
      visit: json['visit'],
      date: json['date'] != null ? json['date'] : null,
      doc: json['doc'] != null ? json['doc'] : null,
      patient: json['patient'] != null ? json['patient'] : null,
      val: json['val'] != null ? json['val'] : null,
    );
  }
}

class Dia10Model {
  final int id;

  final String code;

  final String name_ar;
  final int cat;

  final String docs;

  Dia10Model({
    required this.id,
    required this.code,
    required this.name_ar,
    required this.cat,
    required this.docs,
  });

  factory Dia10Model.fromJson(Map<String, dynamic> json) {
    return Dia10Model(
      id: json['id'],
      code: json['code'],
      name_ar: json['name_ar'],
      cat: json['cat'],
      docs: json['docs'],
    );
  }
}

class PatientModelInfo {
  final int id;

  final String patient;

  final date;

  final int sex;

  int? father;

  int? mother;

  PatientModelInfo({
    required this.id,
    required this.patient,
    required this.date,
    required this.sex,
    this.father,
    this.mother,
  });

  factory PatientModelInfo.fromJson(Map<String, dynamic> json) {
    return PatientModelInfo(
      id: json['id'],
      patient: json['patient'],
      date: json['birth_date'],
      sex: json['sex'],
      father: json['father_height'] != null ? json['father_height'] : null ,
      mother: json['mother_height'] != null ? json['mother_height'] : null ,
    );
  }
}
