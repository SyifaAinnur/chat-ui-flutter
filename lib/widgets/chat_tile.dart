import 'package:flutter/material.dart';
import 'package:chat_us/theme.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String chat;
  final String imageUrl;
  final String time;

  const ChatTile({
    Key? key,
    this.name = '',
    this.chat = '',
    this.imageUrl = '',
    this.time = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      imageUrl,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      chat,
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                time,
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Divider(
            color: Color(0xff313441),
          ),
        ],
      ),
    );
  }
}
