import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/change_password_controller.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Change Password"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Old Password",
                validator: Validator.required,
                suffixIcon: Icons.password_outlined,
                onChanged: (value) {},
              ),
              QTextField(
                label: "New Password",
                validator: Validator.required,
                suffixIcon: Icons.password_outlined,
                onChanged: (value) {},
              ),
              QTextField(
                label: "Confirm new password",
                validator: Validator.required,
                suffixIcon: Icons.password_outlined,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () {},
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
