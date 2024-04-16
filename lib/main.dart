import 'package:flutter_module_rn/blocs/ocr_bloc.dart';
import 'package:flutter_module_rn/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
