import 'package:flutter/material.dart';

import 'widgets/item.dart';
import 'widgets/icons.dart';
import 'widgets/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Center',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),

        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                height: 140,
                width: 300,

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/photo.jpg',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),

                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(
                                'Hisham Swaiti',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),

                              Text(
                                'A programmer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Item(number: '900', name: 'Collect'),

                        Item(number: '50', name: 'Attention'),

                        Item(number: '300', name: 'Track'),

                        Item(number: '40', name: 'Coupons'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                height: 70,
                width: 300,

                child: Row(
                  children: [
                    const MenuIcon(
                      icon: Icons.account_balance_wallet,
                      label: 'Wallet',
                    ),
                    const SizedBox(width: 25),
                    const MenuIcon(
                      icon: Icons.local_shipping,
                      label: 'Delivery',
                    ),
                    const SizedBox(width: 25),
                    const MenuIcon(icon: Icons.message, label: 'Message'),
                    const SizedBox(width: 20),
                    const MenuIcon(
                      icon: Icons.miscellaneous_services,
                      label: 'Services',
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),

                child: Column(
                  children: [
                    const Settingitem(
                      icon: Icons.location_on,
                      title: 'Address',
                      subtitle: 'Ensure your havesting addres',
                    ),
                    const Settingitem(
                      icon: Icons.lock,
                      title: 'Privacy',
                      subtitle: 'System premission',
                    ),
                    const Settingitem(
                      icon: Icons.settings,
                      title: 'General',
                      subtitle: 'Basic General',
                    ),
                    const Settingitem(
                      icon: Icons.notifications,
                      title: 'Notification',
                      subtitle: 'take over the news',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
