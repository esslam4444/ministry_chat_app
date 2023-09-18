import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AppColor.dart';
import 'create_email.dart';
import 'log_in_screen.dart';
import 'side_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LoginScreen(),
      //LoginScreen(),


    );
  }
}


class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(
          backgroundColor: CPrimaryColor,
          title: Text('صندوق الوارد'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'بحث',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20, // Replace with your actual data
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.blueGrey,
                      child: Icon(Icons.person_2_rounded), // Replace with appropriate avatar
                    ),
                    title: Text('$index المرسل '), // Replace with appropriate data
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '$indexرسالة ', // Replace with appropriate data
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          '13ديسمبر', // Replace with the actual time/date value
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tapping on the message
                    },
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(backgroundColor:CPrimaryColor ,
          onPressed: () {
            // Handle creating new email
            Get.to(CreateEmailScreen());
          },
          child: Icon(Icons.add,),

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}