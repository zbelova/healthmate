import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF94DAFF),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            color: const Color(0xFF94DAFF),

            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (index == 0)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF40A1F3),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'How do you feel today?',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    Container(
                      color: index < 3 || index == 6
                          ? const Color(0xFF40A1F3)
                          : index == 3
                              ? const Color(0xFFFFA441)
                              : const Color(0xFFFA5495),
                      child: ListTile(
                        title: Text(
                          DateFormat('dd MMMM yyyy EE').format(DateTime.now().subtract(Duration(days: index))),
                          style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        trailing: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(maxWidth: 5, maxHeight: 5),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            if (index < 3)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF5EA7FF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  'OK',
                                  style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                                ),
                              ),
                            if (index == 3)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFF7619),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Text(
                                          'Мигрень',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFF7619),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Text(
                                          '4',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Wrap(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(right: 5, bottom: 5),
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFDBAD),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Text(
                                          'Тошнота',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14, color: Color(0xFFA1431B), fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 5, bottom: 5),
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFDBAD),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Text(
                                          'Боль в висках',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14, color: Color(0xFFA1431B), fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 5, bottom: 5),
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFDBAD),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Text(
                                          'Головокружение',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14, color: Color(0xFFA1431B), fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            if (index > 3 && index < 6)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFEF0E53),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Text(
                                          'БАР',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFEF0E53),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Text(
                                          '6',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Wrap(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(right: 5, bottom: 5),
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFB6C1),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: const Text(
                                            'Бессоница',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 14, color: Color(0xFFF10E5D), fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(right: 5, bottom: 5),
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFB6C1),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: const Text(
                                            'Импульсивные покупки',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 14, color: Color(0xFFF10E5D), fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(right: 5, bottom: 5),
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFB6C1),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: const Text(
                                            'Неусидчивость',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 14, color: Color(0xFFF10E5D), fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(right: 5, bottom: 5),
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFB6C1),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: const Text(
                                            'Веселость',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 14, color: Color(0xFFF10E5D), fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            if (index > 3 && index < 6) Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFF7619),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Мигрень',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFF7619),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        '4',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Wrap(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 5, bottom: 5),
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFDBAD),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Тошнота',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 14, color: Color(0xFFA1431B), fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 5, bottom: 5),
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFDBAD),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Боль в висках',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 14, color: Color(0xFFA1431B), fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 5, bottom: 5),
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFDBAD),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Головокружение',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 14, color: Color(0xFFA1431B), fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            if (index == 6)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF5EA7FF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  'OK',
                                  style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: index < 3 || index == 6
                          ? const Color(0xFF4996E8)
                          : index == 3
                              ? const Color(0xFFE8AB64)
                              : const Color(0xFFFF88B9),
                      thickness: 1,
                      height: 1,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
