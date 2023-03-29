// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DrawerHeader(
                // margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(20),
                child: Align(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'http://www.bbk.ac.uk/mce/wp-content/uploads/2015/03/8327142885_9b447935ff.jpg'),
                            radius: 30.0,
                          ),
                          SizedBox(
                            width: 200,
                          )
                        ],
                      ),
                      Expanded(
                        child: ListTile(
                          // ignore: sort_child_properties_last
                          contentPadding: EdgeInsets.zero,
                          title: const Text(
                            "User Name",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: const Text("0 Followers"),
                          ),
                          Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text("0 Following")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Lists'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Bookmark'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.flash_on),
            title: Text('Moments'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Settings and privacy'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Help Center'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Logout'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
