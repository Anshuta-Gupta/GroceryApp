class OnboardingContent {
  String image;
  String title;
  String description;
  OnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      description: "Pick your food from our menu\n  More than 35 times",
      image: "images/pic1.png",
      title: "")
];
