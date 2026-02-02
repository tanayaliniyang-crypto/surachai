import 'package:flutter/material.dart';
import '../widgets/food_item.dart';
import 'cart_page.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({super.key});

  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("รายการอาหาร"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartPage()),
              );
              setState(() {});
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 10),
            Text("อาหารคาว", style: TextStyle(fontSize: 18)),

            FoodItem(
              name: "ขนมจีนน้ำยา",
              imagePath: "assets/images/kanomjeen.jpg",
            ),
            FoodItem(name: "ปลาทู", imagePath: "assets/images/platu.jpg"),
            FoodItem(name: "ต้มยำกุ้ง", imagePath: "assets/images/tomyum.jpg"),
            FoodItem(name: "ไก่ทอด", imagePath: "assets/images/chicken.jpg"),

            SizedBox(height: 20),
            Text("ของหวาน", style: TextStyle(fontSize: 18)),

            FoodItem(
              name: "ข้าวเหนียวมะม่วง",
              imagePath: "assets/images/mango.jpg",
            ),
            FoodItem(
              name: "ช็อกโกแลตดูไบ",
              imagePath: "assets/images/chocolate.jpg",
            ),
            FoodItem(name: "มาการอง", imagePath: "assets/images/macaron.jpg"),
          ],
        ),
      ),
    );
  }
}
