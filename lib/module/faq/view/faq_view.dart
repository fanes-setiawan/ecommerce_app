import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hyper_ui/core.dart';
import '../controller/faq_controller.dart';

class FaqView extends StatefulWidget {
  const FaqView({Key? key}) : super(key: key);

  Widget build(context, FaqController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Faq"),
          actions: const [],
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
              url: Uri.parse(
                  "https://dictionary.cambridge.org/dictionary/english/faq")),
        ));
  }

  @override
  State<FaqView> createState() => FaqController();
}
