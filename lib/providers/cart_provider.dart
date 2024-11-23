import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/cart_item.dart';
import '../models/product.dart';

enum LoadingState { initial, loading, loaded, error }

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];
  LoadingState _loadingState = LoadingState.initial;
  String? _error;

  List<CartItem> get items => _items;
  LoadingState get loadingState => _loadingState;
  String? get error => _error;

  double get totalAmount {
    return _items.fold(0, (sum, item) => sum + (item.product.price * item.quantity));
  }

  Future<void> addToCart(Product product) async {
    try {
      final existingIndex = _items.indexWhere((item) => item.product.id == product.id);

      if (existingIndex >= 0) {
        _items[existingIndex].quantity += 1;
      } else {
        _items.add(CartItem(product: product));
      }

      await saveCartToStorage();
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> removeFromCart(Product product) async {
    try {
      _items.removeWhere((item) => item.product.id == product.id);
      await saveCartToStorage();
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> updateQuantity(Product product, int quantity) async {
    try {
      final index = _items.indexWhere((item) => item.product.id == product.id);
      if (index >= 0) {
        if (quantity <= 0) {
          _items.removeAt(index);
        } else {
          _items[index].quantity = quantity;
        }
        await saveCartToStorage();
        notifyListeners();
      }
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> clearCart() async {
    try {
      _items.clear();
      await clearStoredCart();
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> saveCartToStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final cartData = _items.map((item) => item.toJson()).toList();
    await prefs.setString('cart', jsonEncode(cartData));
  }

  Future<void> loadCartFromStorage() async {
    try {
      _loadingState = LoadingState.loading;
      notifyListeners();

      final prefs = await SharedPreferences.getInstance();
      final cartString = prefs.getString('cart');

      if (cartString != null) {
        final cartData = jsonDecode(cartString) as List;
        _items.clear();
        _items.addAll(
          cartData.map((item) => CartItem.fromJson(item)).toList(),
        );
      }

      _loadingState = LoadingState.loaded;
      notifyListeners();
    } catch (e) {
      _loadingState = LoadingState.error;
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> clearStoredCart() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('cart');
  }
}