import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {
  final Map<String, dynamic> profile;

  const ProfileComponent({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => print('show profile'),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "@${profile['profile']['username']}",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => print("ShowMore"),
          child: Text(
            "@${profile['description']}",
            style: const TextStyle(
                color: Colors.white, height: 1.5, letterSpacing: 1.0),
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
