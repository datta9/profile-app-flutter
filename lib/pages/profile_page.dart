import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ProfileText = TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
    var ProfileCompletePercentage = 25;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xff7b89c3),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                      ),
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage('images/profilepic.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Phani Datta',
                    style: ProfileText,
                  ),
                  Text(
                    '+91 8912312345',
                    style: ProfileText,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    ProfileCompletePercentage.toString() + '%',
                    style: ProfileText,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  SizedBox(
                    width: screenWidth * 0.67,
                    child: LinearProgressIndicator(
                      value: ProfileCompletePercentage / 100,
                      color: Colors.white,
                      backgroundColor: Color(0xff3956ae),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 1.0),
                        ),
                        fixedSize: MaterialStateProperty.all(
                            Size(screenWidth * 0.67, 0.0))),
                    onPressed: () {},
                    child: Text(
                      'Complete your profile',
                      style: ProfileText,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.grey.shade300)),
              margin: EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  MenuItems(Icons.medical_services, 'Doctors'),
                  CustomDivider(),
                  MenuItems(Icons.calendar_today, 'Appointments'),
                  CustomDivider(),
                  MenuItems(Icons.card_giftcard, 'Health Interest'),
                  CustomDivider(),
                  MenuItems(Icons.credit_card, 'My Payments'),
                  CustomDivider(),
                  MenuItems(Icons.local_offer, 'Offers'),
                  CustomDivider(),
                  MenuItems(Icons.arrow_upward, 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  IconData icon;
  String menuTitle;

  MenuItems(this.icon, this.menuTitle);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color(0xff7b89c3),
      ),
      title: Text(
        menuTitle,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 15.0,
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.85,
      child: Divider(color: Colors.grey),
      height: 0,
    );
  }
}
