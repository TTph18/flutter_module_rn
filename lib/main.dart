import 'package:flutter_module_rn/blocs/ocr_bloc.dart';
import 'package:flutter_module_rn/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OCR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1677ff),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: BlocProvider(
        create: (context) => OCRBloc(
            textRecognizer:
                TextRecognizer(script: TextRecognitionScript.latin)),
        child: const MyHomePage(title: 'OCR Bill'),
      ),
    );
  }
}
