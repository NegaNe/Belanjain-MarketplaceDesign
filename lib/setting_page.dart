import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});
  final String _contents = 'MyInsides';

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
                  text: Text('$_contents'),
                  container: Container(
                    child: Text('My Address'),
                  ),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
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
                  text: Text('$_contents'),
                  container: Container(child: Text('Chat Settings')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Notification Settings')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Privacy Settings')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
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
                  text: Text('$_contents'),
                  container: Container(child: Text('Help')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Rules')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('FAQ')),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Terms and Condition')),
                ),
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
