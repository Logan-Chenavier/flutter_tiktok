import 'package:flutter/material.dart';
import 'package:flutter_tiktok/components/profile/profile_component.dart';
import 'package:flutter_tiktok/components/video_player/video_player_component.dart';

class FeedComponent extends StatelessWidget {
  final Map<String, dynamic> item;

  const FeedComponent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoPlayerComponent(media: item['media']),
        Positioned(
            bottom: 100,
            left: 20,
            right: 100,
            child: ProfileComponent(profile: item))
      ],
    );
  }
}
