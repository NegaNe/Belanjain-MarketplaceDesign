// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petter Official Store'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'My Purchase',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w700,
                    // color: Color(0XFFFFFFF),
                  )
                ), 
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'To Pay'
                    ),
                  )
                )
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'To Ship'
                    ),
                  )
                )
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'To Receive'
                    ),
                  )
                )
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'To Rate'
                    ),
                  )
                )
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                child: Container(
                  decoration: BoxDecoration(color: Color(0XFF6D6E4C)),
                  child: TextButton(onPressed: () {}, child: Text("Logout")),
                  width: 150,
                ),
              ),
              SizedBox(
                height: 25,
              )
            ],
          ))
        ],
      ),
    );
  }
}
