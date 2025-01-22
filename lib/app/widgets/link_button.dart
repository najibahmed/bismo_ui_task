import 'package:flutter/material.dart';
import 'package:loyality_card_wallet/app/utils/dimension.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({super.key, required this.urlLabel, required this.url});

  final String urlLabel;
  final String url;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    print("check");
    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        minimumSize: const Size(0, 0),
        textStyle: TextStyle(
            color: Colors.orange,
            fontSize: Dimension.height10*1.8
        ),
      ),
      onPressed: () {
         _launchUrl(url);
      },
      child: Text(urlLabel),
    );
  }
}