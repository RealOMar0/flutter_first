import 'package:flutter/material.dart';
import 'package:flutter_first/models/product_model.dart';
import 'package:flutter_first/screens/product_details_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late bool isFav;

  @override
  void initState() {
    super.initState();
    isFav = widget.product.isFav;
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.product;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ProductDetailsScreen(product: p)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Image.asset(
                  p.image,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) =>
                      GamingPlaceholder(category: p.category),
                ),
              ),
            ),

            // Product Info
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    p.brand,
                    style: GoogleFonts.inter(fontSize: 11, color: Colors.grey),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    p.name,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${p.price.toStringAsFixed(0)}",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() => isFav = !isFav),
                        child: Icon(
                          isFav ? Icons.favorite : Icons.favorite_border,
                          size: 18,
                          color: isFav ? Colors.red : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GamingPlaceholder extends StatelessWidget {
  const GamingPlaceholder({super.key, required this.category});

  final String category;

  IconData get _icon => switch (category) {
    'Consoles' => Icons.sports_esports_rounded,
    'Controllers' => Icons.gamepad_rounded,
    'Audio' => Icons.headphones_rounded,
    'Keyboards' => Icons.keyboard_rounded,
    'Mice' => Icons.mouse_rounded,
    'Monitors' => Icons.monitor_rounded,
    _ => Icons.videogame_asset_rounded,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1C1C1E),
      alignment: Alignment.center,
      child: Icon(_icon, size: 58, color: Colors.white),
    );
  }
}
