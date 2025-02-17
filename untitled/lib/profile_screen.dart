import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'profile_option_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "الملف الشخصي",
          style: TextStyle(color: Colors.teal),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // صورة الملف الشخصي
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          const SizedBox(height: 10),
          // اسم المستخدم
          const Text(
            "يارا حلبي",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          // قائمة الخيارات
          ProfileOptionTile(
            title: "تعديل المعلومات",
            icon: Icons.edit,
            onTap: () {},
          ),
          ProfileOptionTile(
            title: "اللغة",
            icon: Icons.language,
            onTap: () {},
          ),
          ProfileOptionTile(
            title: "الإعدادات",
            icon: Icons.settings,
            onTap: () {},
          ),
          const Spacer(),
          // زر تسجيل الخروج
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                // هنا يمكن إضافة منطق تسجيل الخروج
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // حواف ناعمة مثل الصورة
                  border: Border.all(color: Colors.red.shade400, width: 1.5), // لون أخف قليلاً
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // توزيع متوازن للعناصر
                  children: [
                    const SizedBox(width: 15), // مسافة داخلية لتحسين التوازن
                    const Icon(Icons.arrow_back_ios, color: Colors.red, size: 20), // السهم يسار
                    const Spacer(), // دفع النص نحو المنتصف
                    const Text(
                      "تسجيل الخروج",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(), // دفع الأيقونة نحو اليمين
                    const Icon(Icons.logout, color: Colors.red, size: 22), // الأيقونة يمين
                    const SizedBox(width: 15), // مسافة داخلية لتحسين التوازن
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
