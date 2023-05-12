import 'package:url_launcher/url_launcher_string.dart';

void launchPhoneNumber(String phoneNumber) async {
  final String url = 'tel:$phoneNumber';
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
void launchFacebook(String facebookWebUrl) async {
  // const String facebookMobileUrl = 'fb://page/marwendona';
  const String facebookMobileUrl = '';

  if (await canLaunchUrlString(facebookMobileUrl)) {
    await launchUrlString(facebookMobileUrl);
  } else {
    await launchUrlString(facebookWebUrl);
  }
}

void sendEmail(String email) async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
  );

  if (await canLaunchUrlString(emailLaunchUri.toString())) {
    await launchUrlString(emailLaunchUri.toString());
  } else {
    throw 'Could not launch $email';
  }
}

void openLocation(String address) async {
  const String mapsUrl = 'geo:34.774789, 10.773510&zoom=15';

  if (await canLaunchUrlString(mapsUrl)) {
    await launchUrlString(mapsUrl);
  } else {
    final String fallbackUrl = 'https://www.google.com/maps/search/?api=1&query=$address';
    await launchUrlString(fallbackUrl);
  }
}

void openLinkedInProfile(String linkedinAddress) async {
  final String linkedInUrl = 'https://www.$linkedinAddress';
  await launchUrlString(linkedInUrl);
}

void openGitHubProfile(String gitHubUrl) async {
  await launchUrlString(gitHubUrl);
}
