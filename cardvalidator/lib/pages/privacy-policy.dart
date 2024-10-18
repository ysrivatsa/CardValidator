// privacy_policy_page.dart
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        backgroundColor: Colors.green[50],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Privacy Policy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const SizedBox(height: 16),
              const Text(
                "Last updated: 17-10-2024\n\n"
                "Your privacy is important to us. This privacy policy explains how we handle information when you use our application.\n\n"
                "1. **Information We Collect**\n"
                "   - We do not collect, store, or save any personal information from users of our application.\n"
                "   - Any card number entered by the user is not saved or transmitted to any database or third-party service.\n\n"
                "2. **Usage of Information**\n"
                "   - Since we do not collect any information, we do not use your personal data for any purposes.\n\n"
                "3. **Security of Information**\n"
                "   - As we do not collect any personal information, we do not store any information that could be at risk of a data breach.\n\n"
                "4. **Third-Party Services**\n"
                "   - Our application may contain links to third-party websites or services. We are not responsible for the privacy practices of these third-party sites.\n\n"
                "5. **Changes to This Privacy Policy**\n"
                "   - We may update this privacy policy from time to time. Any changes will be posted on this page, and we encourage you to review this privacy policy periodically.\n\n"
                "By using our application, you consent to our privacy policy.\n",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
