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
                height: 25,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text('Account Settings'),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                ),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text('Settings'),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text('Account Settings'),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              Expanded(
                child: BoxReuseable(),
              ),
              SizedBox(
                height: 75,
              )
            ],
          ))
        ],
      ),
    );
  }
}
