import 'package:budgets_bites/verification/email_verfification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../FirebaseAuthentication/firebase_auth_controller.dart';

class VerificationMail extends StatelessWidget {
  const VerificationMail({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MailVerificationController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 200,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                LineAwesomeIcons.envelope_open,
                size: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Verify with email address',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'We have sent a email verification link on your email account. Please check email and click on the link to verify you Email Account',
                style: TextStyle(color: Colors.grey, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'If not auto redirect after verfification,click on the continue button below',
                style: TextStyle(color: Colors.grey, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: OutlinedButton(
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  onPressed: () =>
                      controller.manuallyCheckEmailVerificationStatus(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () => controller.sendVerificationMail(),
                  child: const Text('Resend E-mail Link')),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () => Authentication.instance.signOut(),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
