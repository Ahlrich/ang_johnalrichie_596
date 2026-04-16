import 'package:ang_midterm_3801/view/student_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://shrvmipaglmmjpkidngz.supabase.co',        
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNocnZtaXBhZ2xtbWpwa2lkbmd6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODM4MzEsImV4cCI6MjA4NjQ1OTgzMX0.hUCZCGkVkxNs9itdA8_0iVhGnwwwrOEWqh6AYnxMiS0',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Grade Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: const StudentPage(),
    );
  }
}