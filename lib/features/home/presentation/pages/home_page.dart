import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/utility/images_aseets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              width: width(context),
              height: 156,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  colors: [const Color(0xFF8900FE), const Color(0xFFFFDE59)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Delivering to',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Al Satwa, 81A Street',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.02,
                        ),
                      ),
                      Text(
                        'Hi hepa! ',
                        style: TextStyle(
                          color: const Color(0xFFF9F9F9),
                          fontSize: 30,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(Assets.person),
                ],
              ),
            ),
            // Header
            //       Container(
            //         decoration: const BoxDecoration(
            //           gradient: LinearGradient(
            //             colors: [
            //               Color(0xFFB16CEA),
            //               Color(0xFFFF5E69),
            //               Color(0xFFFF8A56),
            //               Color(0xFFFFC844),
            //             ],
            //             begin: Alignment.topLeft,
            //             end: Alignment.bottomRight,
            //           ),
            //           borderRadius: BorderRadius.only(
            //             bottomLeft: Radius.circular(24),
            //             bottomRight: Radius.circular(24),
            //           ),
            //         ),
            //         padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            //         child: Row(
            //           children: [
            //             Expanded(
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: const [
            //                   Text(
            //                     "Delivering to",
            //                     style: TextStyle(color: Colors.white70, fontSize: 13),
            //                   ),
            //                   SizedBox(height: 2),
            //                   Text(
            //                     "Al Satwa, 81A Street",
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                   SizedBox(height: 8),
            //                   Text(
            //                     "Hi hepa!",
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: 22,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             const CircleAvatar(
            //               radius: 22,
            //               backgroundImage: NetworkImage(
            //                 "https://randomuser.me/api/portraits/women/44.jpg",
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 16),

            //       // Services
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 16),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             const Text(
            //               "Services:",
            //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            //             ),
            //             const SizedBox(height: 12),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 _ServiceCard(
            //                   icon: Icons.fastfood,
            //                   label: "Food",
            //                   badge: "Up to 50%",
            //                   badgeColor: Colors.purple,
            //                 ),
            //                 _ServiceCard(
            //                   icon: Icons.health_and_safety,
            //                   label: "Health & wellness",
            //                   badge: "20mins",
            //                   badgeColor: Colors.purple,
            //                 ),
            //                 _ServiceCard(
            //                   icon: Icons.shopping_basket,
            //                   label: "Groceries",
            //                   badge: "15 mins",
            //                   badgeColor: Colors.purple,
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 16),

            //       // Promo code
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 16),
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(16),
            //           ),
            //           elevation: 0.5,
            //           child: Padding(
            //             padding: const EdgeInsets.all(16),
            //             child: Row(
            //               children: const [
            //                 Icon(Icons.card_giftcard, color: Colors.amber, size: 32),
            //                 SizedBox(width: 12),
            //                 Expanded(
            //                   child: Text(
            //                     "Got a code !\nAdd your code and save on your order",
            //                     style: TextStyle(
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(height: 16),

            //       // Shortcuts
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 16),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             const Text(
            //               "Shortcuts:",
            //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            //             ),
            //             const SizedBox(height: 12),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: const [
            //                 _ShortcutCard(icon: Icons.history, label: "Past orders"),
            //                 _ShortcutCard(
            //                   icon: Icons.local_offer,
            //                   label: "Super Saver",
            //                 ),
            //                 _ShortcutCard(icon: Icons.star_half, label: "Must-tries"),
            //                 _ShortcutCard(
            //                   icon: Icons.card_giftcard,
            //                   label: "Give Back",
            //                 ),
            //                 _ShortcutCard(icon: Icons.star, label: "Best Sellers"),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 16),

            //       // Poster/Carousel
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 16),
            //         child: SizedBox(
            //           height: 140,
            //           child: PageView(
            //             children: [
            //               _PosterCard(
            //                 imageUrl:
            //                     "https://www.krispykremearabia.com/images/mms-banner.jpg",
            //                 title: "Made with M&M's",
            //                 subtitle: "For a limited time only",
            //               ),
            //               // Add more posters if needed
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(height: 16),

            //       // Popular restaurants
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 16),
            //         child: const Text(
            //           "Popular restaurants nearby",
            //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            //         ),
            //       ),
            //       const SizedBox(height: 12),
            //       SizedBox(
            //         height: 100,
            //         child: ListView(
            //           scrollDirection: Axis.horizontal,
            //           padding: const EdgeInsets.symmetric(horizontal: 16),
            //           children: const [
            //             _RestaurantCard(
            //               imageUrl: "https://logo.clearbit.com/allobeirut.com",
            //               name: "Allo Beirut",
            //               time: "32 mins",
            //             ),
            //             SizedBox(width: 12),
            //             _RestaurantCard(
            //               imageUrl: "https://logo.clearbit.com/laffah.com",
            //               name: "Laffah",
            //               time: "38 mins",
            //             ),
            //             SizedBox(width: 12),
            //             _RestaurantCard(
            //               imageUrl: "https://logo.clearbit.com/falafilalrabih.com",
            //               name: "Falafil Al Rabih",
            //               time: "44 mins",
            //             ),
            //             SizedBox(width: 12),
            //             _RestaurantCard(
            //               imageUrl: "https://logo.clearbit.com/barbar.com",
            //               name: "Barbar",
            //               time: "34 mins",
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: "Deliver",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: 0,
        onTap: (i) {},
      ),
    );
  }
}

// Service Card Widget
class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String badge;
  final Color badgeColor;

  const _ServiceCard({
    required this.icon,
    required this.label,
    required this.badge,
    required this.badgeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(icon, size: 36, color: Colors.deepOrange),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: badgeColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  badge,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 70,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13),
          ),
        ),
      ],
    );
  }
}

// Shortcut Card Widget
class _ShortcutCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ShortcutCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.08),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.purple, size: 28),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 60,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 11),
          ),
        ),
      ],
    );
  }
}

// Poster Card Widget
class _PosterCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const _PosterCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 16,
            top: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Restaurant Card Widget
class _RestaurantCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String time;

  const _RestaurantCard({
    required this.imageUrl,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            errorBuilder:
                (context, error, stackTrace) => Container(
                  width: 60,
                  height: 60,
                  color: Colors.grey[300],
                  child: const Icon(Icons.restaurant, color: Colors.grey),
                ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          name,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        Text(time, style: const TextStyle(fontSize: 11, color: Colors.grey)),
      ],
    );
  }
}
