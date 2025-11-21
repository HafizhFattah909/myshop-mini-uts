import 'package:flutter/material.dart';

void main() {
  runApp(const MyShopMiniApp());
}

class MyShopMiniApp extends StatelessWidget {
  const MyShopMiniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop Mini',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2D3561),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2D3561),
          brightness: Brightness.light,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// ============================================================
// DATA MODELS
// ============================================================

class Category {
  final String id;
  final String name;
  final IconData icon;
  final Color primaryColor;
  final Color secondaryColor;
  final String emoji;

  Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.primaryColor,
    required this.secondaryColor,
    required this.emoji,
  });
}

class Product {
  final String id;
  final String name;
  final String categoryId;
  final IconData icon;
  final String imageUrl;
  final double price;
  final String description;
  final double rating;

  Product({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.icon,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.rating,
  });
}

// ============================================================
// DATA STORE
// ============================================================

class DataStore {
  static final List<Category> categories = [
    Category(
      id: 'food',
      name: 'Makanan',
      icon: Icons.restaurant_menu,
      primaryColor: const Color(0xFFFF6B6B),
      secondaryColor: const Color(0xFFFFE66D),
      emoji: '🍽️',
    ),
    Category(
      id: 'drink',
      name: 'Minuman',
      icon: Icons.local_cafe_outlined,
      primaryColor: const Color(0xFF4ECDC4),
      secondaryColor: const Color(0xFF95E1D3),
      emoji: '☕',
    ),
    Category(
      id: 'electronics',
      name: 'Elektronik',
      icon: Icons.devices_outlined,
      primaryColor: const Color(0xFF8B5CF6),
      secondaryColor: const Color(0xFFC4B5FD),
      emoji: '💻',
    ),
  ];

  static final List<Product> products = [
    // MAKANAN
    Product(
      id: 'f1',
      name: 'Nasi Goreng Spesial',
      categoryId: 'food',
      icon: Icons.rice_bowl_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=400',
      price: 25000,
      description: 'Nasi goreng dengan telur, ayam, dan sayuran segar',
      rating: 4.8,
    ),
    Product(
      id: 'f2',
      name: 'Mie Ayam Bakso',
      categoryId: 'food',
      icon: Icons.ramen_dining_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=400',
      price: 18000,
      description: 'Mie ayam dengan bakso dan pangsit goreng',
      rating: 4.6,
    ),
    Product(
      id: 'f3',
      name: 'Sate Ayam Madura',
      categoryId: 'food',
      icon: Icons.set_meal_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1529563021893-cc83c992d75d?w=400',
      price: 30000,
      description: '10 tusuk sate ayam dengan bumbu kacang',
      rating: 4.9,
    ),
    Product(
      id: 'f4',
      name: 'Gado-Gado Jakarta',
      categoryId: 'food',
      icon: Icons.eco_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=400',
      price: 15000,
      description: 'Sayuran segar dengan bumbu kacang',
      rating: 4.5,
    ),
    Product(
      id: 'f5',
      name: 'Rendang Padang',
      categoryId: 'food',
      icon: Icons.dinner_dining_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=400',
      price: 35000,
      description: 'Daging sapi dengan bumbu rendang autentik',
      rating: 5.0,
    ),
    Product(
      id: 'f6',
      name: 'Soto Ayam Lamongan',
      categoryId: 'food',
      icon: Icons.soup_kitchen_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=400',
      price: 20000,
      description: 'Soto ayam dengan kuah kuning khas',
      rating: 4.7,
    ),

    // MINUMAN
    Product(
      id: 'd1',
      name: 'Es Kopi Susu',
      categoryId: 'drink',
      icon: Icons.coffee_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1461023058943-48dbf1399192?w=400',
      price: 15000,
      description: 'Kopi arabika dengan susu fresh',
      rating: 4.8,
    ),
    Product(
      id: 'd2',
      name: 'Jus Alpukat',
      categoryId: 'drink',
      icon: Icons.blender_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1623065422902-30a2d299bbe4?w=400',
      price: 18000,
      description: 'Alpukat segar dengan susu cokelat',
      rating: 4.7,
    ),
    Product(
      id: 'd3',
      name: 'Thai Tea Original',
      categoryId: 'drink',
      icon: Icons.local_drink_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1558160074-4d7d8bdf4256?w=400',
      price: 12000,
      description: 'Thai tea dengan susu kental manis',
      rating: 4.6,
    ),
    Product(
      id: 'd4',
      name: 'Lemon Tea',
      categoryId: 'drink',
      icon: Icons.emoji_food_beverage_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=400',
      price: 10000,
      description: 'Teh dengan perasan lemon segar',
      rating: 4.5,
    ),
    Product(
      id: 'd5',
      name: 'Milkshake Strawberry',
      categoryId: 'drink',
      icon: Icons.icecream_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1579954115545-a95591f28bfc?w=400',
      price: 22000,
      description: 'Milkshake strawberry dengan whipped cream',
      rating: 4.9,
    ),
    Product(
      id: 'd6',
      name: 'Matcha Latte',
      categoryId: 'drink',
      icon: Icons.free_breakfast_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1536013014374-338c61d65b33?w=400',
      price: 20000,
      description: 'Matcha premium dengan susu oat',
      rating: 4.8,
    ),

    // ELEKTRONIK
    Product(
      id: 'e1',
      name: 'Laptop Gaming ROG',
      categoryId: 'electronics',
      icon: Icons.laptop_mac_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=400',
      price: 15000000,
      description: 'Laptop gaming RTX 4060, RAM 16GB',
      rating: 4.9,
    ),
    Product(
      id: 'e2',
      name: 'Smartphone Pro Max',
      categoryId: 'electronics',
      icon: Icons.smartphone_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400',
      price: 8500000,
      description: 'Smartphone flagship dengan kamera 108MP',
      rating: 4.8,
    ),
    Product(
      id: 'e3',
      name: 'Wireless Headphone',
      categoryId: 'electronics',
      icon: Icons.headphones_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
      price: 1200000,
      description: 'Headphone ANC dengan battery 30 jam',
      rating: 4.7,
    ),
    Product(
      id: 'e4',
      name: 'Smartwatch Series 9',
      categoryId: 'electronics',
      icon: Icons.watch_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
      price: 4500000,
      description: 'Smartwatch dengan health monitoring',
      rating: 4.8,
    ),
    Product(
      id: 'e5',
      name: 'Tablet Pro 12.9"',
      categoryId: 'electronics',
      icon: Icons.tablet_mac_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400',
      price: 11000000,
      description: 'Tablet dengan M2 chip dan Pencil support',
      rating: 4.9,
    ),
    Product(
      id: 'e6',
      name: 'Mechanical Keyboard',
      categoryId: 'electronics',
      icon: Icons.keyboard_outlined,
      imageUrl:
          'https://images.unsplash.com/photo-1595225476474-87563907a212?w=400',
      price: 850000,
      description: 'Mechanical keyboard RGB hot-swappable',
      rating: 4.6,
    ),
  ];

  static List<Product> getProductsByCategory(String categoryId) {
    return products.where((p) => p.categoryId == categoryId).toList();
  }

  static Category getCategoryById(String id) {
    return categories.firstWhere((c) => c.id == id);
  }
}

// ============================================================
// HOME SCREEN - DESAIN KREATIF DENGAN CARD HORIZONTAL
// ============================================================

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CUSTOM HEADER DENGAN WAVE DESIGN
              Stack(
                children: [
                  Container(
                    height: 220,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF2D3561),
                          Color(0xFF3D4A7A),
                          Color(0xFF5B6B9E),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF8F9FA),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'MyShop Mini',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Temukan Produk Terbaik',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'untuk Kebutuhan Anda',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 24),
                        // SEARCH BAR
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey[400],
                                size: 24,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'Cari produk...',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // SECTION TITLE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kategori Produk',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3561),
                            letterSpacing: 0.3,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: 50,
                          height: 4,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF2D3561), Color(0xFF5B6B9E)],
                            ),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2D3561).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '3 Kategori',
                        style: TextStyle(
                          color: Color(0xFF2D3561),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // CATEGORY CARDS - HORIZONTAL ROW
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: DataStore.categories.map((category) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: _CategoryCard(category: category),
                      ),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 32),

              // PROMO BANNER
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFF6B6B), Color(0xFFFF8E53)],
                    ),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFFF6B6B).withOpacity(0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '🎉 Promo Spesial',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Diskon hingga 50%\nuntuk produk pilihan',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.95),
                                fontSize: 14,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.local_offer,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// CATEGORY CARD WIDGET - DESIGN UNIK
// ============================================================

class _CategoryCard extends StatelessWidget {
  final Category category;

  const _CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListScreen(category: category),
          ),
        );
      },
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [category.primaryColor, category.secondaryColor],
          ),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: category.primaryColor.withOpacity(0.4),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Stack(
          children: [
            // PATTERN BACKGROUND
            Positioned(
              right: -20,
              top: -20,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: -10,
              bottom: -10,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // CONTENT
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // EMOJI
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      category.emoji,
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                  // NAME & ICON
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.3,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: category.primaryColor,
                          size: 16,
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

// ============================================================
// PRODUCT LIST SCREEN - MODERN GRID DESIGN
// ============================================================

class ProductListScreen extends StatelessWidget {
  final Category category;

  const ProductListScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = DataStore.getProductsByCategory(category.id);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Column(
          children: [
            // CUSTOM APP BAR
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [category.primaryColor, category.secondaryColor],
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: category.primaryColor.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${products.length} produk tersedia',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        category.emoji,
                        style: const TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // GRID VIEW
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.68,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return _ProductCard(
                    product: products[index],
                    category: category,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// PRODUCT CARD WIDGET
// ============================================================

class _ProductCard extends StatelessWidget {
  final Product product;
  final Category category;

  const _ProductCard({required this.product, required this.category});

  String _formatPrice(double price) {
    if (price >= 1000000) {
      return 'Rp ${(price / 1000000).toStringAsFixed(1)}jt';
    } else if (price >= 1000) {
      return 'Rp ${(price / 1000).toStringAsFixed(0)}rb';
    }
    return 'Rp $price';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProductDetailScreen(product: product, category: category),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TOP SECTION WITH IMAGE
            Container(
              height: 140,
              decoration: BoxDecoration(
                color: category.primaryColor.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Stack(
                children: [
                  // PRODUCT IMAGE
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    child: Image.network(
                      product.imageUrl,
                      width: double.infinity,
                      height: 140,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                : null,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              category.primaryColor,
                            ),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: category.primaryColor.withOpacity(0.1),
                          child: Center(
                            child: Icon(
                              product.icon,
                              size: 48,
                              color: category.primaryColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // GRADIENT OVERLAY
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.1),
                        ],
                      ),
                    ),
                  ),
                  // RATING BADGE
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star,
                            size: 14,
                            color: Color(0xFFFFD700),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            product.rating.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D3561),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // PRODUCT INFO
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3561),
                        height: 1.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _formatPrice(product.price),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: category.primaryColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                category.primaryColor,
                                category.secondaryColor,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Lihat Detail',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// PRODUCT DETAIL SCREEN - PREMIUM DESIGN
// ============================================================

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  final Category category;

  const ProductDetailScreen({
    Key? key,
    required this.product,
    required this.category,
  }) : super(key: key);

  String _formatPrice(double price) {
    return 'Rp ${price.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Column(
          children: [
            // CUSTOM APP BAR
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [category.primaryColor, category.secondaryColor],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const Text(
                    'Detail Produk',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            // CONTENT
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // PRODUCT ICON SECTION
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            category.primaryColor.withOpacity(0.15),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          // FLOATING ICON
                          Container(
                            padding: const EdgeInsets.all(50),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: category.primaryColor.withOpacity(0.3),
                                  blurRadius: 30,
                                  spreadRadius: 5,
                                  offset: const Offset(0, 15),
                                ),
                              ],
                            ),
                            child: Icon(
                              product.icon,
                              size: 100,
                              color: category.primaryColor,
                            ),
                          ),
                          const SizedBox(height: 30),
                          // RATING
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFFFD700),
                                  size: 22,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  product.rating.toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2D3561),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                const Text(
                                  '/ 5.0',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // PRODUCT INFO CARD
                    Container(
                      margin: const EdgeInsets.all(24),
                      padding: const EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // PRODUCT NAME
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D3561),
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 12),
                          // CATEGORY BADGE
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  category.primaryColor.withOpacity(0.2),
                                  category.secondaryColor.withOpacity(0.2),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  category.emoji,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  category.name,
                                  style: TextStyle(
                                    color: category.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          // DIVIDER
                          Container(
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey.withOpacity(0.1),
                                  Colors.grey.withOpacity(0.3),
                                  Colors.grey.withOpacity(0.1),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          // DESCRIPTION TITLE
                          const Text(
                            'Deskripsi Produk',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D3561),
                            ),
                          ),
                          const SizedBox(height: 12),
                          // DESCRIPTION
                          Text(
                            product.description,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                              height: 1.6,
                            ),
                          ),
                          const SizedBox(height: 28),
                          // PRICE SECTION
                          Container(
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  category.primaryColor.withOpacity(0.1),
                                  category.secondaryColor.withOpacity(0.1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: category.primaryColor.withOpacity(0.3),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Harga',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      _formatPrice(product.price),
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: category.primaryColor,
                                        letterSpacing: -0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        category.primaryColor,
                                        category.secondaryColor,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: category.primaryColor
                                            .withOpacity(0.4),
                                        blurRadius: 15,
                                        offset: const Offset(0, 8),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // ACTION BUTTONS
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: category.primaryColor,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: BorderSide(
                                    color: category.primaryColor,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_back, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    'Kembali',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      '${product.name} ditambahkan ke keranjang!',
                                    ),
                                    backgroundColor: category.primaryColor,
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    duration: const Duration(seconds: 2),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: category.primaryColor,
                                foregroundColor: Colors.white,
                                elevation: 8,
                                shadowColor: category.primaryColor.withOpacity(
                                  0.5,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_bag, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    'Beli Sekarang',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
