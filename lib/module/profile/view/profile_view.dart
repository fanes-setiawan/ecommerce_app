import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/logo/appLogoSmall.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: AppLogoSmall(),
        title: const Text("Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
            Icons.more_horiz,
            size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 36.0,
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
            Text(
              "Fanes Setiawan",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "fanes@gmail.com",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            ListTile(
              onTap: ()=>Get.to(EditProfileView()),
              minLeadingWidth: 0.0,
              title: Text("Edit Profil"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            Divider(),
            ListTile(
              minLeadingWidth: 0.0,
              title: Text("Change Password"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            Divider(),
            ListTile(
              minLeadingWidth: 0.0,
              title: Text("Privacy Policy"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            Divider(),
            ListTile(
              minLeadingWidth: 0.0,
              title: Text("herm of Service"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            Divider(),
            ListTile(
              minLeadingWidth: 0.0,
              onTap: () => controller.doLogOut(),
              title: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
