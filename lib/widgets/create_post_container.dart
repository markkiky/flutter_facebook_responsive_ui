import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:path/path.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "What\'s on your mind"),
                ),
              )
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => print("VideoCam"),
                  child: Row(
                    children: [
                      Icon(
                        Icons.videocam,
                        color: Colors.red,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Live",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton(
                  onPressed: () => print("VideoCam"),
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo_library,
                        color: Colors.green,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Photo",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton(
                  onPressed: () => print("Room"),
                  child: Row(
                    children: [
                      Icon(
                        Icons.video_call,
                        color: Colors.purple,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Live",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
