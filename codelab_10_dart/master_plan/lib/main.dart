import 'package:flutter/material.dart';
import 'package:master_plan/provider/plan_provider.dart';
import './views/plan_screen.dart';
import './models/data_layer.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Plan',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.purple.shade50,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.purple,
        ),
      ),

      // Scaffold agar header tetap tampil
      home: Scaffold(
        appBar: AppBar(title: const SizedBox.shrink()),
        body: PlanProvider(
          notifier: ValueNotifier<Plan>(const Plan()),
          child: const PlanScreen(),
        ),
      ),
    );
  }
}
