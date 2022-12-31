import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pertemuan2/helper/my_color.dart';
import 'package:pertemuan2/widgets/textLabel.dart';

import '../widgets/buttonProfile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar_image.jpg'),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Famz Amanulloh",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 114,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColor.primaryColor,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Ubah Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ButtonProfile(
                      text: "Ganti Kata Sandi", icon: "assets/pass.png"),
                  ButtonProfile(
                      text: "Informasi Bantuan", icon: "assets/i_profile.png"),
                  ButtonProfile(
                      text: "Pengaturan", icon: "assets/i_profile.png"),
                  ButtonProfile(
                      text: "Beri Rating Aplikasi",
                      icon: "assets/i_profile.png"),
                  ButtonProfile(text: "Keluar ", icon: "assets/i_profile.png"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
