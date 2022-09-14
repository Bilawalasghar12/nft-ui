import 'package:flutter/material.dart';
import 'package:project/nft%20card.dart';


class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'apiens_3.png',
    );
    ;
  }
}
