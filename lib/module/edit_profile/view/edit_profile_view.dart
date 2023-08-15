import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edit_profile_controller.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  Widget build(context, EditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Profile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QImagePicker(
                label: "Photo",
                onChanged: (value) {},
                validator: Validator.required,
                value: null,
              ),
              SizedBox(height: 15.0),
              H6(title: "Personal Information"),
              QTextField(
                label: "Full name",
                validator: Validator.required,
                onChanged: (value) {},
              ),
              QTextField(
                label: "Last Name",
                validator: Validator.required,
                onChanged: (value) {},
              ),
              QTextField(
                label: "Date of Birth",
                validator: Validator.required,
                onChanged: (value) {},
              ),
              QTextField(
                label: "Email",
                validator: Validator.required,
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
  State<EditProfileView> createState() => EditProfileController();
}
