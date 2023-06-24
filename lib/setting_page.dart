import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
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
                  'Account Settings',
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(
                    child: Text('Privacy & Safety'),
                  ),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(
                    child: Text('My Address'),
                  ),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('Credentials')),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text('Settings'),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('Chat Settings')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('Notification Settings')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('Privacy Settings')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('Language')),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text('Support'),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('Help')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('Rules')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('FAQ')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(child: Text('Terms and Condition')),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF6D6E4C),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  width: 150,
                ),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ))
        ],
      ),
    );
  }
}
