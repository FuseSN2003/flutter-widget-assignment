import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.red),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sukavit Nuayha"),
          backgroundColor: Colors.red,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.network(
                  "https://gratisography.com/wp-content/uploads/2024/10/gratisography-cool-cat-800x525.jpg"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "ขอบคุณที่ใช้บริการ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 83, 83, 83))),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "สรุปรายละเอียดการชาร์จ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month),
                      SizedBox(
                        width: 10,
                      ),
                      Text("วันที่ชาร์จ")
                    ],
                  ),
                  Text("9 กันยายน 2567")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.ev_station),
                      SizedBox(
                        width: 10,
                      ),
                      Text("สถานีชาร์จ")
                    ],
                  ),
                  Text("Place A")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.battery_charging_full_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text("ประเภทหัวชาร์จ")
                    ],
                  ),
                  Text("CCS2")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.timelapse),
                      SizedBox(
                        width: 10,
                      ),
                      Text("ระยะเวลาชาร์จ")
                    ],
                  ),
                  Text("00:30:00")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.battery_charging_full_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text("จำนวนหน่วย")
                    ],
                  ),
                  Text("9.314 KWh")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ค่าบริการรวมทั้งสิ้น",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.red,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "4500 บาท",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Floating action button clicked");
          },
          child: const Icon(Icons.place),
        ),
      ),
    );
  }
}
