import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});
  final String _contents = 'MyInsides';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFDDDDDD),
      appBar: AppBar(
        title: const Text('Account Settings',
        style: TextStyle(
          fontFamily: 'OswaldReg',
        ),),
        backgroundColor: Color(0XFFFFFFFF),
      ),
      body:Column(
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
                  'My Account',
                    style: TextStyle(
                      fontFamily: 'OswaldReg',
                      color: Color(0XFF7B7B7B),
                  ),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  container: Container(
                    child: Text('Privacy & Safety',
                    style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                    ),
                    ),
                  ),
                ),
              ),
              // const Divider(
              //   color: Colors.black,
              //   height: 1,
              // ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(
                    child: Text('My Address',
                    style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),
                  ),
                  ),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Credentials',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),
                  )
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text('Settings',
                style: TextStyle(
                      fontFamily: 'OswaldReg',
                      color: Color(0XFF7B7B7B),
                  ),),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Chat Settings',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),)),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Notification Settings',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),)),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Privacy Settings',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),)),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Language',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),)),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text('Support',
                style: TextStyle(
                      fontFamily: 'OswaldReg',
                      color: Color(0XFF7B7B7B),
                  ),),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Help',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),)),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Rules',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),)),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('FAQ',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),)),
                ),
              ),
              Expanded(
                child: BoxReuseable(
                  text: Text('$_contents'),
                  container: Container(child: Text('Terms and Condition',
                  style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.5,
                  ),)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0), color: Color(0XFF6D6E4C)),
                  height: 45,
                  child: TextButton(onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  }, child: Text("Logout",
                    style: TextStyle(
                        fontFamily: 'OswaldReg',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xffFFFFFF),
                    ),
                  )),
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
