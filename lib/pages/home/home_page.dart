import 'package:flutter/material.dart';
import 'package:hoomy_ui/pages/details/details_page.dart';
import '../../size_config.dart';
import 'components/bottom_nav_bar.dart';
import 'components/head_line_text.dart';
import 'components/imagecard_redflag.dart';
import 'components/nearby_card.dart';
import 'components/recomended_card.dart';
import 'components/router_dots.dart';
import 'components/top_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: const [
                TopContainer(),
                ImageCardAndRedFlag(),
              ],
            ),
            SizedBox(height: myHeight(context) * 0.030),
            const RouterDots(),
            const HeadLineText(headline: "Recommended"),
            RecommendedCards(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsPage(),
                  )),
            ),
            const HeadLineText(headline: "Near By"),
            const NearByCard(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
