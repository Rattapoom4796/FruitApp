import 'package:flutter/material.dart';
import 'FruitDetail.dart';
import 'FruitDataModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> fruitname = [
    'durain',
    'strawberry',
    'Mango',
    'Orange',
    'blueberry'
  ];
  static List des = [
    'ทุเรียน (Durian) คือ พืชสกุลไม้พื้นเมืองของภูมิภาคเอเชียตะวันออกเฉียงใต้ ในวงศ์ Bombacaceae มีรสชาติหวาน มัน อร่อย นุ่มละมุนลิ้น กลิ่นที่เอกลักษณ์เฉพาะ จนได้รับยกย่องว่าเป็นราชาผลไม้ อุดมไปด้วยสารอาหารหลายชนิดและพลังงานกับค่าน้ำตาลที่สูง หากบริโภคไม่ถูกสุขลักษณะย่อมก่อให้เกิดผลกระทบต่อสุขภาพได้ เช่นอาการ ร้อนใน เจ็บคอ แผลในปาก ท้องผูก นอกจากนี้ในส่วนอื่น ๆ ยังมีสรรพคุณทางยาทั้งตำราโบราณจากไทย จีน',
    'สตรอเบอร์รี่ (strawberry) เป็นผลไม้ (fruit) ที่ปลูกในเขตอบอุ่น (subtropical fruit) จัดอยู่ประเภท non climacteric fruit คือต้องเก็บเกี่ยวเมื่อผลสุกพร้อมบริโภค เก็บเกี่ยวเมื่อผลแก่และนำมาบ่มไม่ได้ ผลของสตรอเบอรรี่ เป็นผลไม้ประเภทผลกลุ่ม (aggregate fruit) ผลย่อยแต่ละผลเรียกว่า อะคีน (achene) อยู่บนผิวของผล แต่ละผลอาจมีผลย่อยจำนวน 20-500 ผล ซึ่งแต่ละผลมีความยาว 1 มิลลิเมตร ผลของสตรอเบอรีคือส่วนที่เจริญมาจากฐานรองดอก (receptacle) และพัฒนาไปเป็นส่วนที่รับประทานได้',
    ' มะม่วงเป็นไม้ยืนต้นขนาดกลางถึงขนาดใหญ่ สูงประมาณ 10–30 เมตร ใบ ใบเดี่ยวสีเขียว ขอบใบเรียบ ฐานใบมน ปลายใบแหลม ดอก เป็นช่อ กลีบดอกมี 5 กลีบ เกสรสีแดงเรื่อๆ ดอกออกช่วงเดือนธันวาคมถึงเดือนกุมภาพันธ์ ช่วงฤดูร้อนจะติดผล ผล ยาวประมาณ 5–20 ซม. กว้าง 4–8 ซม. ลูกดิบสีเขียว เมื่อสุกเปลี่ยนเป็นสีเหลือง หรือเหลืองส้ม มีเมล็ดภายใน 1 เมล็ด',
    'ส้ม  (Orange) คือ ผลไม้ในตระกูล Citrus รสชาติเปรี้ยวปนหวาน กลิ่นหอม มีวิตามินซีสูง หลากหลายสายพันธุ์ ราคาไม่แพง อุดมไปด้วยสรรพคุณทางยา เป็นประโยชน์ต่อสุขภาพร่างกาย หาซื้อได้ตามตลาด ร้านสะดวกซื้อ สามารถนำมาแปรรูปเป็นอาหาร ขนม หรือเครื่องดื่ม ซึ่งรับประทานได้ทุกเพศ วัย ไม่ใช่แค่ผลของมันเพียงอย่างเดียว เปลือกก็นำมาทำเป็นผลิตภัณฑ์บำรุงผิว น้ำมันหอมระเหยได้อีก แต่ก็มีข้อควรระวังหากรับประทานโดยไม่ถูกสุขลักษณะ อาจเกิดผลเสียได้',
    'blueberry หรือบลูเบอร์รี่ เป็นผลไม้ในตระกูลเบอร์รี่ ผลกลมขนาดเล็กสีม่วงเข้ม มีรสชาติหวานอมเปรี้ยว นิยมรับประทานแบบสด ๆ และนำมาทำขนม เช่น พาย แยม ซอส บลูเบอร์รี่มีสารอาหาร แร่ธาตุ และวิตามินนานาชนิด เช่น มีประโยชน์ต่อร่างกายในการช่วยป้องกันโรคหัวใจ โรคมะเร็ง และอาจมีส่วนช่วยควบคุมความดันโลหิตได้',
  ];

  static List url = [
    'https://www.marketingoemoffice.com/image/Data_durian2.jpg',
    'https://clv.h-cdn.co/assets/15/22/2560x1280/landscape-1432664914-strawberry-facts1.jpg',
    'https://static.thairath.co.th/media/dFQROr7oWzulq5Fa4L9Li4FZdTxInCszMGIaNGL8TChHJw2dsW7S8TciWxonNDvkA4B.jpg',
    'https://www.petcharavejhospital.com/userfiles/files/%E0%B8%AA%E0%B9%89%E0%B8%A1%E0%B9%80%E0%B8%8A%E0%B9%89%E0%B8%87(1).jpg',
    'https://res.cloudinary.com/dk0z4ums3/image/upload/v1650613260/attached_image_th/1660-blueberry-resized.jpg'
  ];

  final List<FruitDataModel> Fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel('${fruitname[index]}', '${url[index]}',
          '${fruitname[index]} ${des[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.yellow,
          title: Text('Pass Data from ListView to next Screen'),
        ),
        body: Container(
          color: Colors.indigoAccent,
          child: ListView.builder(
              itemCount: Fruitdata.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blueAccent,
                  child: Card(
                    child: Container(
                      color: Colors.lightBlueAccent,
                      child: ListTile(
                        title: Text(Fruitdata[index].name),
                        leading: SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.network(Fruitdata[index].ImageUrl),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FruitDetail(
                                    fruitDataModel: Fruitdata[index],
                                  )));
                        },
                      ),
                    ),
                  ),
                );
              }),
        ));
  }

}