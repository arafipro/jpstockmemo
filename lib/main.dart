import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jpstockmemo/components/adbanner.dart';
import 'package:jpstockmemo/views/list_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Delegate には、flutter_localizations 標準のものだけを設定
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ja', 'JP'), // Japanese
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('日本株投資メモ'),
        ),
        body: Column(
          children: [
            AdBanner(),
            Expanded(child: ListPage()),
          ],
        ),
      ),
    );
  }
}
