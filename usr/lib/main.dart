import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/login_screen.dart';
import 'package:couldai_user_app/screens/dashboard_screen.dart';
import 'package:couldai_user_app/utils/app_styles.dart';
// import 'package:couldai_user_app/services/supabase_service.dart'; // Uncomment when ready

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Initialize Supabase here when you have your credentials
  // await SupabaseService.initialize(
  //   url: 'YOUR_SUPABASE_URL',
  //   anonKey: 'YOUR_SUPABASE_ANON_KEY',
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAX Hospital Management',
      debugShowCheckedModeBanner: false,
      theme: AppStyles.getTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
