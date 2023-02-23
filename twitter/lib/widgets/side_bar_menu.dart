import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                  width: 80,
                  height: 80,
                ),
                ClickableWidget(
                  () {},
                  const Text(
                    'User Name',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ClickableWidget(
                      () {},
                      const Text(
                        '0 Followers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ClickableWidget(
                      () {},
                      const Text(
                        '0 Following',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Column(
            children: [
              ClickableWidget(
                () {},
                const ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                  ),
                ),
              ),
              ClickableWidget(
                () {},
                const ListTile(
                  title: Text(
                    'Lists',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.list,
                    size: 30,
                  ),
                ),
              ),
              ClickableWidget(
                () {},
                const ListTile(
                  title: Text(
                    'Bookmark',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.bookmark_outlined,
                    size: 30,
                  ),
                ),
              ),
              ClickableWidget(
                () {},
                const ListTile(
                  title: Text(
                    'Moments',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.filter_vintage_rounded,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClickableWidget(
                  () {},
                  const Text(
                    'Settings and privacy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClickableWidget(
                  () {},
                  const Text(
                    'Help Center',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClickableWidget(
                  () {},
                  const Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget ClickableWidget(
    void Function() onTap,
    Widget child,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}
