import 'package:get/get.dart';
import 'package:medical_u/Utilis_lang/ar.dart';
import 'Utilis_lang/en.dart';

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
