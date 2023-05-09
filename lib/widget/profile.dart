import 'package:flutter/material.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile picture
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                Text(
                  'NAme',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 2),
                // Switch
                Row(
                  children: [
                    Text('Icon Button'),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          backgroundColor: Colors.amberAccent,
                          context: context,
                          builder: (context) {
                            return Wrap(
                              children: const [
                                ListTile(
                                  leading: Icon(Icons.share),
                                  title: Text('Share'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.copy),
                                  title: Text('Copy Link'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Share button
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.share),
            label: Text('Share'),
          ),
        ],
      ),
    );
  }
}
