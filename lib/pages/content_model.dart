class OnboardingContent {
  String image;
  String title;
  String description;
  OnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      description: "Pick your food from our Menu \n  More than 35 times",
      image: "images/pic1.png",
      title: "Select from Our \n Best Menu"),
        OnboardingContent(
      description: "Pay Cash on Delivery \n Card Payment is also Available  ",
      image: "images/COD.png",
      title: "Easy and Online Payment"),
        OnboardingContent(
      description: "Delivery your food at your\n Doorstep",
      image: "images/doorstep.png",
      title: "Quick Delivery at your Door Step"),
        OnboardingContent(
      description: "Eat Freshly Cooked Food \n  Delivery within 30 minutes",
      image: "images/process.jpg",
      title: "Fast Delivery")

];
