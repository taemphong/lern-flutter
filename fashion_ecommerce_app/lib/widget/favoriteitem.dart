import 'package:fashion_ecommerce_app/view/CardHomepage.dart';
import 'package:flutter/material.dart';
import 'package:fashion_ecommerce_app/model/base_model.dart';

class FavoriteItem extends StatelessWidget {
  final BaseModel item;
  final Function onDelete; // สร้างฟังก์ชัน onDelete เพื่อลบรายการนี้

  const FavoriteItem({Key? key, required this.item, required this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(), // กำหนดคีย์ที่ไม่ซ้ำกัน
      onDismissed: (direction) {
        // เมื่อผู้ใช้ลากและลบรายการ
        onDelete(); // เรียกใช้งานฟังก์ชัน onDelete เพื่อลบรายการนี้
      },
      background: Container(
        color: Colors.red, // สีพื้นหลังขณะลากเพื่อลบ
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: Card(
        margin: const EdgeInsets.all(8),
        child: ListTile(
          leading: Image.asset(item.imageUrl, width: 100, height: 100),
          title: Text(item.name),
          subtitle: Text('Price: ${item.price}'),
          trailing: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CardHomePage()),
              );
            },
           child: const Text(
             'Purchase',
              style: TextStyle(
                color: Color.fromARGB(255, 240, 240, 240), 
              ),
          ),

          ),
        ),
      ),
    );
  }
}
