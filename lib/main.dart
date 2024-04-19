import 'package:apna_food/admin/add_food.dart';
import 'package:apna_food/pages/bottomnav.dart';
import 'package:apna_food/pages/details.dart';
import 'package:apna_food/pages/home.dart';
import 'package:apna_food/pages/login.dart';
import 'package:apna_food/pages/onboard.dart';
import 'package:apna_food/pages/wallet.dart';
import 'package:apna_food/widgets/app_const.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:apna_food/pages/signup.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Stripe.publishableKey = publishableKey;
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AddFood(),
    );
  }
}
