import 'package:flutter/material.dart';
import 'package:travel_application/models/travel_news_model.dart';

class CulturalNewsScreen extends StatelessWidget {
  final TravelNews news;
  const CulturalNewsScreen({Key? key, required this.news}) : super(key: key);
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
                'Các đặc trưng văn hóa truyền thống Hàn Quốc',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22,),
              ),

              //-------------------------------------------------------------------------------------
              const Text('1. Hanbok - trang phục truyền thống của Hàn Quốc', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://tuvanduhocmap.com/wp-content/uploads/2022/01/Van-Hoa-Trang-Phuc-Cua-Nguoi-Han-Quoc.jpg', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      'Trang phục Hanbok của người Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Nếu như Việt Nam có áo dài thì Hàn Quốc nổi tiếng với áo Hanbok. Đây là quốc phục của “xứ kim chi”. Áo hanbok của phụ nữ gồm có một váy dài và một áo vét kiểu Bolero. Áo nam giới gồm có một áo khoác ngắn jeogori và quần baji'

                  'Cả hai bộ hanbok này đều có thể mặc với một áo choàng dài theo kiểu tương tự gọi là durumagi. Ngày nay, người Hàn Quốc chủ yếu mặc hanbok vào các dịp lễ tết (Tết Trung thu, Tết Nguyên Đán) hoặc các lễ kỷ niệm như ngày cưới hoặc tang lễ.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('2.  Hangeul - Bảng chữ cái tiếng Hàn Quốc', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://tnttravel.tnt-vietnam.com/uploads/news/2017/03/20/hangul_750_531.jpg', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      'Bảng chữ cái Hàn Quốc',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Bảng chữ cái Hangeul được xây dựng từ thế kỷ 15 bởi hoàng đế Sejong, thời Joseon. Bảng chữ cái gồm 14 phụ âm và 10 nguyên âm. Sự kết hợp giữa phụ âm và nguyên âm hình thành nên âm tiết, do vậy bảng chữ cái hangeul có thể tạo thành hàng nghìn chữ và thể hiện bất kỳ âm điệu nào.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('3. Văn hóa múa mặt nạ Talchum', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text('Hàn Quốc cũng nổi tiếng với văn hóa mặt nạ. Tại quốc gia này, mặt nạ thường dược gọi là tal (탈) trong tiếng Hàn Quốc, được làm từ giấy, gỗ, quả bầu khô, và lông.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),
                    Image.network('https://duhoc.thanhgiang.com.vn/sites/default/files/van-hoa-han-quoc-_2.jpg', fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    const Text(
                      '',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Text('Các loại mặt nạ thường phản ánh sắc thái và cấu trúc xương của gương mặt người Hàn, nhưng cũng có một số loại mặt nạ thể hiện khuôn mặt của các vị thần và con vật, bao gồm cả tả thực và tưởng tượng'

                'Múa mặt nạ về cơ bản là loại hình nghệ thuật dân gian phát triển tự nhiên trong thời Joseon, thời kỳ mà có ít sự phân biệt giữa giai cấp thống trị và thượng lưu trong xã hội với người dân thường. Các diễn viên và khán giả cùng hòa nhập vào các điệu múa tưng bừng ở cuối mỗi buổi biểu diễn.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('4. Jongmyo Jeryeak - Nhạc tế lễ Jongmyo', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Image.network('https://dulichvietnam.com.vn/du-lich-han-quoc/wp-content/uploads/2024/03/Samgyeopsal-1.jpg', fit: BoxFit.cover),
                    //const SizedBox(height: 10),
                    const Text(
                      '',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              const Text('Vào ngày Chủ nhật đầu tiên của tháng Năm trong năm, hậu duệ của dòng tộc Jeonju Yi - hoàng tộc thời Joseon (1392-1910), làm lễ thờ cúng tổ tiên tại đền Jongmyo ở trung tâm thủ đô Seoul'

                'Hiện nay, nghi lễ này được tổ chức khá ngắn gọn và đơn giản so với trước đây, nhưng có tới 19 loại nhạc cụ cổ điển, bao gồm chùm chuông đá, chuông đồng, các loại trống, hòa nên âm thanh đặc biệt cho buổi lễ truyền thống.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('5. Văn hóa chào hỏi', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Image.network('https://cdn.eva.vn/upload/3-2023/images/2023-07-28/cach-lam-banh-gao-cay-han-quoc-tokbokki-don-gian-tai-nha-7-1690517938-22-width650height380.jpg', fit: BoxFit.cover),
                    //const SizedBox(height: 10),
                    const Text(
                      '',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              const Text('Việc cúi đầu chào hỏi là thói quen của người Hàn Quốc. Chào hỏi không chỉ thay lời hỏi thăm mà còn thể hiện sự thân thiện, lòng kính trọng mà người Hàn Quốc dành cho bạn.'

                'Khi chào hỏi người Hàn thường cúi đầu kết hợp nói những câu nói quen thuộc như “Annyeonghaseyo” hay “annyeonghashimnika” với ý nghĩa “Xin chào, bạn có khỏe không?” hay “gamsahamnida” là “Xin cám ơn”. Người Hàn Quốc thường nói sau khi kết thúc việc cúi đầu chào.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

              const SizedBox(
                height: 20,
              ),

              //-------------------------------------------------------------------------------------
              const Text('6. Hàn Quốc và sự ảnh hưởng của văn hóa Hallyu', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Đảm bảo rằng chiều rộng của Container bằng với phần nội dung của nó
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Image.network('https://static-images.vnncdn.net/files/publish/2023/11/3/mi-lanh-1-593.jpg', fit: BoxFit.cover),
                    //const SizedBox(height: 10),
                    const Text(
                      '',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              const Text(' Làn sóng Hallyu với những bộ phim truyền hình, những nhóm nhạc thần tượng ngày càng vượt xa khỏi biên giới Hàn Quốc, vươn đến châu Á, châu Âu mở rộng tới Mỹ. Giới trẻ trên thế giới phát cuồng vì những oppa, unnie xứ Hàn. Rất nhiều khách du lịch đã thừa nhận rằng họ đến Hàn Quốc chính vì làn sóng Hallyu đã ảnh hưởng quá mạnh mẽ đến cuộc sống của chính bản thân họ.', style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),

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
