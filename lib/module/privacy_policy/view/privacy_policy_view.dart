import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hyper_ui/core.dart';
import '../controller/privacy_policy_controller.dart';

class PrivacyPolicyView extends StatefulWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  Widget build(context, PrivacyPolicyController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Privacy Policy"),
          actions: const [],
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("https://example.com")),
        ));
  }

  @override
  State<PrivacyPolicyView> createState() => PrivacyPolicyController();
}
