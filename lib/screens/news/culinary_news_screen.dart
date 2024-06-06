import 'package:flutter/material.dart';

import '../../models/travel_news_model.dart';

class CulinaryNewsScreen extends StatelessWidget {
  final TravelNews news;
  const CulinaryNewsScreen({Key? key, required this.news}) : super(key: key);

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
                'Những món ăn Hàn Quốc không thể bỏ qua',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22,),
              ),

              //-------------------------------------------------------------------------------------
              const Text('1. Kimchi', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://www.huongnghiepaau.com/wp-content/uploads/2022/06/kim-chi-cai-thao-chua-vi-han-quoc.jpg', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      'Kimchi đặc sản của Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Một trong những món ăn truyền thống và là biểu tượng của ẩm thực Hàn Quốc. Được làm từ cải thảo hoặc củ cải lên men, ướp cùng các loại gia vị như ớt, tỏi, gừng và hành, tạo nên hương vị đặc trưng cay nồng và thơm ngon. Ngoài vai trò là một món ăn kèm trong bữa ăn hàng ngày, kimchi còn là nguyên liệu chính trong nhiều món ăn nổi tiếng khác như Kimchi Jjigae (món súp kimchi) và Kimchi Bokkeumbap (cơm chiên kimchi). ', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('2. Cơm trộn Bibimbap', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://cdn.eva.vn/upload/3-2023/images/2023-07-17/2-cach-lam-com-tron-han-quoc---bibimbap-tai-nha-ngon-nhu-ngoai-tiem-9-1689560337-460-width600height400.jpg', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      'Cơm trộn Bibimbap Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Món cơm trộn trứ danh của Hàn Quốc bao gồm cơm trắng làm nền, trên đó là sự pha trộn của rau cải, cà rốt, giá đỗ, và thịt bò hoặc đậu phụ, thường được bổ sung thêm một quả trứng chiên hoặc ốp lết. Điểm nhấn của Bibimbap là Gochujang – tương ớt Hàn', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('3. Thịt nướng Bulgogi', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://muahohanquoc.com/wp-content/uploads/2021/07/Bulgogi.png', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      'Thịt nướng Bulgogi Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Text('Món này làm từ thịt bò thái mỏng được ướp kỹ càng với hỗn hợp đặc biệt gồm xì dầu, dầu mè, tỏi, hành tây, gừng, đường và tiêu đen. Quá trình diễn ra từ 2-4 giờ giúp thịt thấm đều gia vị và trở nên đậm đà. Bulgogi sau đó được nướng trên bếp than, tạo nên một mùi hương thơm ngào ngạt và một màu nâu vàng đẹp mắt.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('4. Thịt nướng Samgyeopsal', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://dulichvietnam.com.vn/du-lich-han-quoc/wp-content/uploads/2024/03/Samgyeopsal-1.jpg', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      'Thịt ba chỉ nướng Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Món thịt ba chỉ nướng thơm phức, thường được các nhân vật trong phim Hàn thưởng thức trong các buổi tụ tập bạn bè, được ăn kèm cùng với Kimchi và rượu Soju. Cách tuyệt vời nhất để ăn Samgyeopsal là cuốn thịt trong lá rau sống, rồi chấm vào các loại sốt cay như Ssamjang. Sự kết hợp giữa vị ngon của thịt nướng và hương vị tươi mát của các loại rau sống làm cho món ăn này trở nên không thể cưỡng lại được.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),Text('Món cơm trộn trứ danh của Hàn Quốc bao gồm cơm trắng làm nền, trên đó là sự pha trộn của rau cải, cà rốt, giá đỗ, và thịt bò hoặc đậu phụ, thường được bổ sung thêm một quả trứng chiên hoặc ốp lết. Điểm nhấn của Bibimbap là Gochujang – tương ớt Hàn', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('5. Bánh gạo Tteokbokki', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://cdn.eva.vn/upload/3-2023/images/2023-07-28/cach-lam-banh-gao-cay-han-quoc-tokbokki-don-gian-tai-nha-7-1690517938-22-width650height380.jpg', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      'Tteokbokki truyền thống Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Tteokbokki là một món ăn đường phố phổ biến và được yêu thích rộng rãi tại Hàn Quốc. Bánh gạo dẻo mềm, hình dạng dài và tròn, được nấu chín trong một loại nước sốt đỏ đặc trưng, thường được làm từ Gochujang (tương ớt Hàn Quốc) hoặc Gochugaru (bột ớt). Tteokbokki thường được phục vụ cùng với cá viên, trứng luộc, và các loại rau củ, mang lại trải nghiệm ẩm thực đa dạng dành cho bạn.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('6. Mì lạnh Naengmyeon', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://static-images.vnncdn.net/files/publish/2023/11/3/mi-lanh-1-593.jpg', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      'Mì lạnh Hàn Qốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Không chỉ là một món ăn ngon bổ dưỡng mà còn là một phần quan trọng của văn hóa ẩm thực Hàn Quốc. Sự kết hợp hài hòa với nước dùng lạnh độc đáo, tạo nên hương vị mới lạ hòa quyện giữa vị mặn, ngọt, chua và cay. Những lát thịt bò mỏng và rau sống tươi ngon trang trí tạo nên một tác phẩm nghệ thuật không chỉ đẹp mắt mà còn ngon tuyệt cú mèo.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
