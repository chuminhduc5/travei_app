import 'package:flutter/material.dart';

class TablePriceWidget extends StatelessWidget {
  final String price;
  const TablePriceWidget({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: const FixedColumnWidth(140),
      border: TableBorder.all(
        color: Colors.black,
        style: BorderStyle.solid,
        width: 1,
      ),
      children: [
        const TableRow(children: [
          Column(
            children: [Text('Độ tuổi')],
          ),
          Column(
            children: [Text('Giá')],
          ),
        ]),
        TableRow(children: [
          const Column(
            children: [Text('Người lớn')],
          ),
          Column(
            children: [Text(price)],
          ),
        ]),
        const TableRow(children: [
          Column(
            children: [Text('Trẻ em từ 6-18 tuổi')],
          ),
          Column(
            children: [Text('Giảm 20%')],
          ),
        ]),
        const TableRow(children: [
          Column(
            children: [Text('Em bé dưới 6 tuổi')],
          ),
          Column(
            children: [Text('Giảm 80%')],
          ),
        ]),
      ],
    );
  }
}
