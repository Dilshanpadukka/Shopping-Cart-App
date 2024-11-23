import '../models/product.dart';

class ProductRepository {
  Future<List<Product>> getProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      Product(
        id: '1',
        name: 'Classic Denim Jacket',
        price: 18000.00,
        image: 'https://i.imgur.com/1ttYWaI.jpeg',
        description: 'A timeless denim jacket crafted with durable fabric, featuring button closures, chest pockets, and a tailored fit. Perfect for layering with casual outfits, this jacket offers versatility and style. Suitable for year-round wear, it combines comfort and rugged charm for a modern yet classic wardrobe essential.',
      ),
      Product(
        id: '2',
        name: 'Silk Evening Gown',
        price: 25000.00,
        image: 'https://bigboys.co.uk/cdn/shop/files/l26509504714.jpg?v=1720718247',
        description: 'This elegant silk evening gown features a luxurious flowing silhouette, adjustable spaghetti straps, and intricate detailing. Designed for formal occasions, its premium fabric ensures a sophisticated look and graceful movement. Ideal for weddings, galas, or exclusive events, it exudes timeless charm and confidence.',
      ),
      Product(
        id: '3',
        name: 'Vintage Leather Handbag',
        price: 22000.00,
        image: 'https://i.imgur.com/1twoaDy.jpeg',
        description: 'A vintage-style leather handbag with a spacious interior, sleek stitching, and sturdy handles. Its timeless design is perfect for everyday errands or special occasions. With a blend of practicality and elegance, this bag ensures style while accommodating all your essentials effortlessly.',
      ),
      Product(
        id: '4',
        name: 'Stylish Ankle Boots',
        price: 21000.00,
        image: 'https://i.imgur.com/ZKGofuB.jpeg',
        description: 'Step out in confidence with these stylish ankle boots. Crafted from high-quality leather, they feature a sleek finish, cushioned insoles, and sturdy block heels. Designed for both comfort and versatility, they effortlessly complement jeans, skirts, or dresses for a chic and polished look.',
      ),
      Product(
        id: '5',
        name: 'Cozy Knitted Sweater',
        price: 23000.00,
        image: 'https://i.imgur.com/9LFjwpI.jpeg',
        description: 'Stay warm and fashionable with this cozy knitted sweater. Made from soft, breathable fabric, it features ribbed cuffs, a modern relaxed fit, and subtle texture. Ideal for layering or standalone wear, it’s the perfect companion for chilly days and casual gatherings.',
      ),
      Product(
        id: '6',
        name: 'Elegant Maxi Skirt',
        price: 20000.00,
        image: 'https://i.imgur.com/R3iobJA.jpeg',
        description: 'Elevate your wardrobe with this elegant maxi skirt, designed with a flattering high-waist fit, pleated details, and flowing fabric. Its versatility makes it ideal for both casual and formal occasions, offering effortless style and comfort. Pair it with your favorite blouse for a chic look.',
      ),
      Product(
        id: '7',
        name: 'Designer Sunglasses',
        price: 24000.00,
        image: 'https://s.alicdn.com/@sc04/kf/H76817ddc3acc4ae293ca61bbffb937f4c.jpg_300x300.jpg',
        description: 'Sophisticated and stylish, these designer sunglasses feature sleek frames, UV protection lenses, and a lightweight design for all-day comfort. Perfect for shielding your eyes while adding a touch of elegance to any outfit. A must-have accessory for sunny days and outdoor adventures.',
      ),
      Product(
        id: '8',
        name: 'Golden Hoop Earrings',
        price: 3500.00,
        image: 'https://ae01.alicdn.com/kf/S93cb67f2f2c94493857eea678313c319u/MamacitaSlay-l-ks-parlak-zirkon-su-damlas-ekli-paslanmaz-elik-k-pe-kad-n-alt-n.jpg',
        description: 'Add a touch of glamour with these golden hoop earrings. Featuring a polished finish and lightweight design, they offer effortless elegance for any occasion. From daily wear to formal events, these earrings complement various outfits, making them a versatile addition to your jewelry collection.',
      ),
      Product(
        id: '9',
        name: 'Casual Cotton T-Shirt',
        price: 15000.00,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9JYyDMZ7UktyL4akM5J_lZ6mcdG5tvxuGK4Gkcd1s6WUNnKyN_A6B3HZQePcHLnrTi6s&usqp=CAU',
        description: 'Experience ultimate comfort with this casual cotton T-shirt. Designed with breathable fabric, a relaxed fit, and classic styling, it’s perfect for everyday wear. Versatile and durable, this T-shirt pairs seamlessly with jeans, shorts, or skirts for a laid-back, effortlessly cool look.',
      ),
      Product(
        id: '10',
        name: 'Trendy Bucket Hat',
        price: 2000.00,
        image: 'https://ae-pic-a1.aliexpress-media.com/kf/Sd3de273a888c4be5baeb36c05b75b61cq/Cute-Bottle-Water-for-Girls-Plastic-Shaker-Cup-Drink-Bottle-Children-Kawaii-School-Gym-Sport-Free.jpg_640x640Q90.jpg_.webp',
        description: 'Complete your outfit with this trendy bucket hat. Featuring a lightweight design, adjustable fit, and a fashionable silhouette, it’s the perfect accessory for sunny days. Its versatile style complements casual and streetwear looks, making it a staple for every fashion-forward wardrobe.',
      ),
    ];

  }
}