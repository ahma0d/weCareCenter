class DoctorAppointment {
  final dynamic appointmentDate;

  final PatientModelNew patient;

  final TimeSlotNew timeSlotNew;

  DoctorAppointment({
    required this.appointmentDate,
    required this.patient,
    required this.timeSlotNew,
  });

  factory DoctorAppointment.fromJson(Map<String, dynamic>json){
    return DoctorAppointment(
      appointmentDate: json['appointment_date'],
      patient: PatientModelNew.fromJson(json['patient']),
      timeSlotNew: TimeSlotNew.fromJson(json['time_slot'],),
    );
  }
}

class PatientModelNew {
  final String name;

  PatientModelNew({required this.name});

  factory PatientModelNew.fromJson(Map<String, dynamic>json){
    return PatientModelNew(name: json['name']);
  }
}


class TimeSlotNew {
  final dynamic fromTime;

  TimeSlotNew({required this.fromTime});

  factory TimeSlotNew.fromJson(Map<String, dynamic>json){
    return TimeSlotNew(fromTime: json['from']);
  }
}
