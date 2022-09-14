import 'package:flutter/material.dart';
import 'package:project/nft%20card.dart';


class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'apiens_2.png',
    );
  }
}