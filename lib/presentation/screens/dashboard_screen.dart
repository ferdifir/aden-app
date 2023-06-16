import 'package:aden/routes/app_routes.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final List<String> optionNotif = [
    'Suara adzan',
    'Suara standar alarm',
    'Suara standar notifikasi',
    'Tanpa suara (notif saja)',
    'Nonaktif'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(5),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/26466516?v=4',
            ),
            radius: 10,
          ),
        ),
        title: const Text('Aden App'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            SizedBox(width: 10),
                            Icon(Icons.location_on),
                            SizedBox(width: 10),
                            Text(
                              'Ubah Lokasi Anda',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        ListTile(
                          onTap: () {},
                          title: const Text('Otomatis (Lokasi saat ini)'),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.MAP);
                          },
                          title: const Text('Manual (Pilih dari peta)'),
                        ),
                        const SizedBox(height: 20)
                      ],
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.location_on),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '27 DzulKa\'dah 1444 H',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '16 Juni 2023',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Menuju Waktu Imsak',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('+/- 3 jam 5 menit lagi'),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const StadiumBorder(),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.map,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'QIBLAT',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.location_on),
                    Text('Sumbersari, Kab. Jember - Indonesia')
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      showNotificationOption(context);
                    },
                    title: const Text('Imsak'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('04:00'),
                        SizedBox(width: 10),
                        Icon(Icons.alarm)
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Subuh'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('04:10'),
                        SizedBox(width: 10),
                        Icon(Icons.alarm)
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Terbit'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('05:30'),
                        SizedBox(width: 10),
                        Icon(Icons.alarm_on)
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Dzuhur'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('11:30'),
                        SizedBox(width: 10),
                        Icon(Icons.alarm_off)
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Ashar'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('15:00'),
                        SizedBox(width: 10),
                        Icon(Icons.alarm)
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Maghrib'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('17:30'),
                        SizedBox(width: 10),
                        Icon(Icons.alarm)
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Isya'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('18:00'),
                        SizedBox(width: 10),
                        Icon(Icons.alarm)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showNotificationOption(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.notifications_active),
                  SizedBox(width: 10),
                  Text(
                    'Atur Notifikasi Subuh',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              for (var i = 0; i < optionNotif.length; i++)
                ListTile(
                  onTap: () {},
                  title: Text(optionNotif[i]),
                  leading: Radio(
                    value: i,
                    groupValue: true,
                    activeColor: Colors.green,
                    onChanged: (Object? value) {},
                  ),
                ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Batal'),
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        );
      },
    );
  }
}
