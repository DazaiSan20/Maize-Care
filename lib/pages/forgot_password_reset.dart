import 'package:flutter/material.dart';
import '../config/theme.dart';
import '../widgets/custom_textfield.dart';

class ForgotPasswordResetPage extends StatelessWidget {
  const ForgotPasswordResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final newPassController = TextEditingController();
    final confirmPassController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Lupa Password'),
        backgroundColor: AppColors.background,
        elevation: 0,
        foregroundColor: AppColors.text,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Lupa Password?",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.text,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Silahkan masukkan password baru",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              CustomTextField(
                label: "Masukkan Password Baru",
                controller: newPassController,
                isPassword: true,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                label: "Konfirmasi Password Baru",
                controller: confirmPassController,
                isPassword: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Reset Password",
                    style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}