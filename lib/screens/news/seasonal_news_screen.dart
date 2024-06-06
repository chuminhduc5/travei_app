import 'package:flutter/material.dart';
import 'package:travel_application/models/travel_news_model.dart';

class SeasonalNewsScreen extends StatelessWidget {
  final TravelNews news;
  const SeasonalNewsScreen({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Du lịch Hàn Quốc mùa nào đẹp nhất?',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22,),
              ),
              const SizedBox(
                height: 10,
              ),

              // Du lịch Hàn Quốc mùa xuân
              const Text('1. Du lịch Hàn Quốc mùa xuân', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Image.network('https://dulichdaiviet.com/uploaded/anh-cam-nang-dl/cam-nang-dl-han-quoc/muaxuanhanquoctuthangmay.jpg', fit: BoxFit.cover),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Mùa Xuân (từ tháng 3 đến tháng 5): ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Mùa xuân ở xứ Hàn là thời điểm lý tưởng để chiêm ngưỡng vẻ đẹp nở rộ của hoa anh đào. Với khí hậu ấm áp dễ chịu và khô ráo, nhiệt độ rơi vào khoảng 10-22°C, mùa xuân là thời điểm thích hợp cho các hoạt động ngoài trời và tham gia những lễ hội hoa nổi bật như lễ hội hoa anh đào, lễ hội hoa Gurye Sansuyu hay lễ hội hoa cải vàng ở Jeju.')
                      ]
                  )
              ),
              const SizedBox(height: 10,),
              Text('Các công viên quốc gia và đường phố ngập tràn sắc hoa, tạo nên bức tranh sống động rực rỡ, lý tưởng cho những ai yêu thích nhiếp ảnh và chia sẻ lên mạng xã hội.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(height: 20,),
              // Du lịch Hàn Quóc mùa hè
              const Text('2. Du lịch Hàn Quốc mùa hè', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2023/4/19/1181787/Ds.png', fit: BoxFit.cover),
                    SizedBox(height: 10),
                    const Text(
                      'Đền Haedong Yonggungsa vào mùa hè',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Mùa Hè (Tháng 6 – Tháng 9): ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Mang đến không khí rộn ràng và sôi động. Đây là thời gian tuyệt vời để tham gia những lễ hội mùa hè náo nhiệt và tận hưởng kỳ nghỉ tại các bãi biển nổi tiếng như Haeundae, Gwangalli, Songdo ở Busan hoặc Hyeopjae, Jungmun Saekdal ở đảo Jeju.')
                      ]
                  )
              ),
              const SizedBox(height: 10,),
              Text('Tuy nhiên, mùa hè cũng đồng nghĩa với thời tiết nóng ẩm, nhiệt độ thường dao động từ 22-30°C, đặc biệt vào mùa mưa bắt đầu vào cuối tháng 7 và đầu tháng 8. Trong thời gian này, du khách có thể tham gia các hoạt động ngoài trời như dã ngoại, bơi lội, hoặc tham quan các điểm du lịch ven biển và thưởng thức những món ăn làm từ hải sản tươi sống.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(height: 20,),
              // Du lịch Hàn Quóc mùa thu
              const Text('3. Du lịch Hàn Quốc mùa thu', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://www.vietnambooking.com/wp-content/uploads/2020/02/mua-thu-han-quoc-thang-may.png', fit: BoxFit.cover),
                    SizedBox(height: 10),
                    const Text(
                      'Mùa thu lá vàng ở Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Mùa thu (Tháng 9 – Tháng 11): ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Theo kinh nghiệm du lịch Hàn Quốc của mình thì mùa thu là khoảng thời gian đẹp nhất trong năm với lá vàng và lá đỏ phủ kín các công viên và núi đồi. Khí hậu mát mẻ và dễ chịu, nhiệt độ thường dao động từ 11-20°C vào tháng 10, và từ 5-15°C vào tháng 11.')
                      ]
                  )
              ),
              const SizedBox(height: 10,),
              Text('Mùa thu là thời điểm tuyệt vời để thực hiện các chuyến dã ngoại và khám phá thiên nhiên. Cảnh quan đầy sắc vàng thơ mộng tạo nên khung cảnh ấn tượng cho những bức ảnh lung linh và lãng mạn.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(height: 20,),
              // Du lịch Hàn Quóc mùa đông
              const Text('4. Du lịch Hàn Quốc mùa đông', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://vj-prod-website-cms.s3.ap-southeast-1.amazonaws.com/shutterstock771253567huge-1664742964375.jpg', fit: BoxFit.cover),
                    SizedBox(height: 10),
                    const Text(
                      'Tuyết rơi vào mùa đông tại Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Mùa Đông (Tháng 12 – Tháng 2):  ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Đây là thời điểm đáng mơ ước cho những ai yêu thích trượt tuyết và các bộ môn thể thao mùa đông. Ngoài ra, bạn còn có thể trải nghiệm tắm suối nước nóng, câu cá trong băng, đi bộ trên tuyết, hoặc chỉ đơn giản là ngắm tuyết rơi.')
                      ]
                  )
              ),
              const SizedBox(height: 10,),
              Text('Mùa đông cũng mang đến không khí lễ hội rộn ràng, đặc biệt là vào dịp Giáng sinh và Tết Dương lịch. Đường phố và cửa hàng được trang trí lộng lẫy cùng với các chợ Giáng sinh truyền thống. Ngoài ra, đây cũng là thời gian tuyệt vời để thưởng thức ẩm thực mùa đông của xử sở K-pop, bao gồm món Kimchi Jjigae nóng hổi và món gà hầm Samgyetang bổ dưỡng.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),
            ],
          ),
        ),
      ),
    );
  }
}
