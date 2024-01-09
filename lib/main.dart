import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:multilanguage/LocaleString.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleString(),
      locale: Locale('en', 'US'),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(" AppLocalizations.of(context)!.helloWorld??" ""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              " AppLocalizations.of(context)!.youHave",
            ),
            Text(
              'hellonew'.tr,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('en', 'US');
                      Get.updateLocale(locale);
                    },
                    child: Text("English")),
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('hi', 'IN');
                      Get.updateLocale(locale);
                    },
                    child: Text("Hindi")),
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('mr', 'IN');
                      Get.updateLocale(locale);
                    },
                    child: Text("Marathi")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
