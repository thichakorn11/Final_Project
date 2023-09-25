import 'package:flutter/material.dart';
import 'package:flutter_application_3/entity/product.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product; // สินค้าที่จะแสดงรายละเอียด

  ProductDetailScreen({required this.product});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool showLargeImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดสินค้า'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // คลิกเพื่อดูรูปภาพใหญ่
                setState(() {
                  showLargeImage = !showLargeImage;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                width: double.infinity,
                height: showLargeImage ? 400 : 200,
                child: Image.asset(
                  "assets/images/${widget.product.imgesUrl}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.productName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "ราคา: ${widget.product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "รายละเอียดสินค้า:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // ส่วนที่จะแสดงรายละเอียดสินค้า
                  // คุณสามารถเพิ่มโค้ดเพื่อแสดงรายละเอียดสินค้าของคุณได้ที่นี่
                ],
              ),
            ),
            // ตัวอย่าง: เพิ่มปุ่มสำหรับเพิ่มลงในตะกร้าและสั่งซื้อ
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // เพิ่มสินค้าลงในตะกร้า
                      // คุณต้องระบุสินค้าที่ถูกเลือก (widget.product) และตัวอื่น ๆ ตามที่คุณต้องการ
                    },
                    child: Text('เพิ่มลงในตะกร้า'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // สั่งซื้อสินค้า
                      // คุณต้องระบุสินค้าที่ถูกเลือก (widget.product) และตัวอื่น ๆ ตามที่คุณต้องการ
                    },
                    child: Text('สั่งซื้อสินค้า'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
