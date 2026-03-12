import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class SyllabusScreen extends StatefulWidget {
  const SyllabusScreen({super.key});

  @override
  State<SyllabusScreen> createState() => _SyllabusScreenState();
}

class _SyllabusScreenState extends State<SyllabusScreen> {
  bool _isLoading = true;
   String? _pdfPath;   

     @override
  void initState() {       
    super.initState();
    loadPdf().then((path) {
      setState(() {
        _pdfPath = path;
        _isLoading = false;
      });
    });
  }

  Future<String> loadPdf() async {
  final byteData = await rootBundle.load("assets/pdf files/syllabus.pdf");
  final tempDir = await getTemporaryDirectory();
  final file = File("${tempDir.path}/syllabus.pdf");
  await file.writeAsBytes(byteData.buffer.asUint8List());
  return file.path;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading ? Center(child: CircularProgressIndicator()) : Container(
        child: PDFView(filePath: "assets/pdf_files/syllabus.pdf"),
      )
    );
  }
}


