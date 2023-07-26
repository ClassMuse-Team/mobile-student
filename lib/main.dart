import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile_student/layout.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/config/.env");
  await Supabase.initialize(
    url: "${dotenv.env["SUPABASE_URL"]}",
    anonKey: "${dotenv.env["ANON_PUBLIC_KEY"]}",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClassMuse - 학생용',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
        fontFamily: "Noto Sans KR",
      ),
      home: const MyLayout(
        isLogined: false,
      ),
    );
  }
}
