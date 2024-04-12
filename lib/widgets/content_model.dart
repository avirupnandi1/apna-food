class OnboardingContent {
  String image;
  String title;
  String description;
  OnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    description: "Pick your food from our menu\n          More than 25 times",
    image: 'assets/images/screen1.png',
    title: "Select from\n    Best Menu",
  ),
  OnboardingContent(
    description: "You can pay cash on delivery & \n  Card Payment is available",
    image: 'assets/images/screen2.png',
    title: 'Easy & Online Payment',
  ),
  OnboardingContent(
    description: "Deliver your food at your\n             Doorstep",
    image: 'assets/images/screen3.png',
    title: 'Quick delivery at your doorstep',
  ),
];
