import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hellonew': 'Hello new', 'message': "Message"},
        'hi_IN': {'hellonew': 'नमस्ते नवीन', 'message': "संदेश"},
        'mr_IN': {'hellonew': 'नवीन नमस्कार', 'message': "संदेश "}
      };
}
