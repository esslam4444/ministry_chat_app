import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AppColor.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateEmailController extends GetxController {
  final TextEditingController recipientController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void sendEmail() {
    String recipient = recipientController.text;
    String subject = subjectController.text;
    String message = messageController.text;

    // Implement email sending logic here
    // ...

    // Clear the text fields after sending the email
    recipientController.clear();
    subjectController.clear();
    messageController.clear();
  }

  @override
  void onClose() {
    recipientController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.onClose();
  }
}

class CreateEmailScreen extends StatelessWidget {
  final CreateEmailController _emailController = Get.put(CreateEmailController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CPrimaryColor,
          title: Text('إنشاء رسالة'),
          actions: [
            IconButton(
              icon: Icon(Icons.attach_file),
              onPressed: () {
                // Handle attachment button press
              },
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                // Handle send button press
                _emailController.sendEmail();
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _emailController.recipientController,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 10),
                  labelText: 'موجهة إلى',
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 10),
                  labelText: 'صورة إلى',
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _emailController.subjectController,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 15),
                  hintText: 'الموضوع',
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: TextFormField(
                  controller: _emailController.messageController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20),
                    hintText: 'الرسالة',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(CPrimaryColor)),
                    onPressed: () {
                      // Handle reply button press
                    },
                    child: Text('رد'),
                  ),
                  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(CPrimaryColor)),
                    onPressed: () {
                      // Handle forward button press
                    },
                    child: Text('إرسال'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}