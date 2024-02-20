import 'package:activityone/components/btn.dart';
import 'package:activityone/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  // signout in method
  void signUserOut(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 50),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('lib/images/Profile.png'),
                      ),
                      Text(
                        'Jefferson Garcia',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'New York',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('User Details'),
                          leading: Icon(Icons.person_outlined),
                          onTap: () {},
                        ),
                        Divider(
                          height: 1,
                        ),
                        ListTile(
                          title: Text('History'),
                          leading: Icon(Icons.history_outlined),
                          onTap: () {},
                        ),
                        Divider(
                          height: 1,
                        ),
                        ListTile(
                          title: Text('Booking Details'),
                          leading: Icon(Icons.confirmation_num_outlined),
                          onTap: () {},
                        ),
                        Divider(
                          height: 1,
                        ),
                        ListTile(
                          title: Text('Contact Us'),
                          leading: Icon(Icons.email_outlined),
                          onTap: () {},
                        ),
                        Divider(
                          height: 1,
                        ),
                        ListTile(
                          title: Text('Share This App'),
                          leading: Icon(Icons.share_outlined),
                          onTap: () {},
                        ),
                        Divider(
                          height: 1,
                        ),
                        ListTile(
                          title: Text('Help'),
                          leading: Icon(Icons.help_outline),
                          onTap: () {},
                        ),
                        Divider(
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                  SignInBtn(
                    onTap: () => signUserOut(context),
                  ),
                ],
              ),
              Positioned(
                top: 70,
                right: 10,
                child: IconButton(
                  icon: Icon(Icons.close, size: 30,),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
