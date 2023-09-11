import 'package:final_project/ui/componant/custom_logout_button.dart';

import 'package:final_project/service/supabase_initializer.dart';

import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12, top: 12),
            child: Center(
                child: ImageProfileContainar(
                    // onPressed: onPressedProfile,
                    )),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: SizedBox(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Column(
                  children: [
                    kVSpace24,
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/14019743/pexels-photo-14019743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      radius: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("data"),
                  ],
                ),
              ),
              kVSpace64,
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: grayColor,
                ),
                title: const Text(
                  "Profile",
                ),
                onTap: () {},
              ),
              kVSpace16,
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: grayColor,
                ),
                title: const Text("Home"),
                onTap: () {},
              ),
              kVSpace16,
              ListTile(
                leading: const Icon(
                  Icons.favorite,
                  color: grayColor,
                ),
                title: const Text("Favorite"),
                onTap: () {},
              ),
              kVSpace64,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: LogOutButton(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // appBarTitle: "Home",
      // // onPressedBackIcon: () {},
      // onPressedProfile: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const AccountScreen(),
      //     ),
      //   );
      // },
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            kVSpace24,
            const HomeContainer(),
            kVSpace16,
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.50,
                  child: const SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            kVSpace16,
                            SizedBox(
                              width: 170,
                              height: 80,
                              child: Text(
                                "Meal Suggestions",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ),
                            kVSpace16,
                            SmallCard(),
                            kVSpace16,
                            SmallCard(),
                          ],
                        ),
                        Column(
                          children: [
                            kVSpace24,
                            SmallCard(),
                            kVSpace16,
                            SmallCard(),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
