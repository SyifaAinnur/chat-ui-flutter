import 'package:chat_us/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:chat_us/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  Widget buildHeader() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_profile.png',
                ),
              ),
            ),
          ),
          Container(
            height: 18,
            width: 14,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/icon_menu.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOnline() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Online',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: kBottomNavBarBackground,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Center(
                  child: Text(
                    '4',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 58,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_story0.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_story1.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_story2.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_story3.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_story4.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMessages() {
    return Container(
      margin: EdgeInsets.only(top: 22),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Messages',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_search.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ChatTile(
                  name: 'Testing 1',
                  chat: 'Mengirim gambar',
                  imageUrl: 'assets/image_chat1.png',
                  time: 'Now',
                ),
                ChatTile(
                  name: 'Testing 2',
                  chat: 'Oke',
                  imageUrl: 'assets/image_chat2.png',
                  time: '11:2 PM',
                ),
                ChatTile(
                  name: 'Testing 3',
                  chat: 'test',
                  imageUrl: 'assets/image_chat3.png',
                  time: '10:6 PM',
                ),
                ChatTile(
                  name: 'Testing 4',
                  chat: 'test',
                  imageUrl: 'assets/image_chat4.png',
                  time: '9:11 PM',
                ),
                ChatTile(
                  name: 'Testing 5',
                  chat: 'test',
                  imageUrl: 'assets/image_chat5.png',
                  time: 'Yesterday',
                ),
                ChatTile(
                  name: 'Testing 6',
                  chat: 'test',
                  imageUrl: 'assets/image_chat6.png',
                  time: 'Yesterday',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: kBottomNavBarBackground,
      selectedItemColor: kPurpleColor,
      selectedLabelStyle: purpleTextStyle.copyWith(
        fontWeight: semiBold,
        fontSize: 12,
      ),
      unselectedItemColor: kGreyColor,
      unselectedLabelStyle: greyTextStyle.copyWith(
        fontWeight: semiBold,
        fontSize: 12,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            width: 24,
            height: 20,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_chat.png',
                ),
              ),
            ),
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 24,
            height: 20,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_call.png',
                ),
              ),
            ),
          ),
          label: 'Calls',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: buildBottomNavBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          buildHeader(),
          buildOnline(),
          buildMessages(),
        ],
      ),
    );
  }
}
