import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_repository/travel_repository.dart';

class SliderTravelWidget extends StatefulWidget {
  final Travel travel;
  const SliderTravelWidget(this.travel, {super.key});

  @override
  State<SliderTravelWidget> createState() => _SliderTravelWidgetState();
}

class _SliderTravelWidgetState extends State<SliderTravelWidget> {
  late final List<String> imageUrls;

  // Currently selected image index
  int selectedIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
    // Initialize the list of image URLs with the first image being the travel image
    imageUrls = [
      widget.travel.picture,
      'https://doicanhviet.com/upload/slide_img/product/70889/70889-10.webp',
      'https://doicanhviet.com/upload/slide_img/product/70889/70889-6.webp',
      'https://doicanhviet.com/upload/Image/Tour/Han%20Quoc/mua-he/han%20quoc%20he%205.jpg',
      'https://doicanhviet.com/upload/Image/Tour/Han%20Quoc/329291311_535023088733753_5507906482495424786_n.jpg',
      'https://doicanhviet.com/upload/Image/Tour/Han%20Quoc/mua-he/han%20quoc%20mua%20he%201.jpg',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: imageUrls.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = imageUrls[index];
            return buildImage(urlImage);
          },
          carouselController: _carouselController,
          options: CarouselOptions(
            height: MediaQuery.of(context).size.width * 0.6,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _carouselController.animateToPage(index);
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: selectedIndex == index ? Colors.blue : Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: buildImage(imageUrls[index], width: 70, height: 80),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildImage(String urlImage, {double width = double.infinity, double height = double.infinity}) {
    // Kiểm tra đường dẫn ảnh
    if (urlImage.startsWith('http') || urlImage.startsWith('https')) {
      return Image.network(
        urlImage,
        fit: BoxFit.cover,
        width: width,
        height: height,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
      );
    } else {
      return Image.asset(
        urlImage,
        fit: BoxFit.cover,
        width: width,
        height: height,
      );
    }
  }
}
