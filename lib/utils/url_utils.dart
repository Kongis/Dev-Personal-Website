import 'package:url_launcher/url_launcher.dart';

/*launchURL(String url) async {
  if (!await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}*/

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}