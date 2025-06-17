class OnboardingData {
  final String title;
  final String description;

  OnboardingData({required this.title, required this.description});
}

final List<OnboardingData> onboardingPages = [
  OnboardingData(
    title: "all-in-one delivery",
    description:
        "Order groceries, medicines, and meals delivered straight to your door",
  ),
  OnboardingData(
    title: "User-to-User Delivery",
    description: "Send or receive items from other users quickly and easily",
  ),
  OnboardingData(
    title: "Sales & Discounts",
    description: "Discover exclusive sales and deals every day",
  ),
];
