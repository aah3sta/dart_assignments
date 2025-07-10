//Online Shopping Cart System in Dart
//This Dart program simulates an online shopping cart with discounts and tax calculations using anonymous, higher-order, and recursive functions.

void main(){
    // Sample shopping cart with item prices
  List<double> cartItems = [5.0, 12.0, 25.0, 8.0, 15.0];

  print('Original Cart: $cartItems');

  // 1. Filter Items: Remove items below $10 using an anonymous function
  cartItems = cartItems.where((item) => item >= 10).toList();
  print('Filtered Cart (>= \$10): $cartItems');

  // 2. Apply Discount: Use higher-order function to reduce price by percentage
  List<double> applyDiscount(List<double> items, double discountPercent) {
    return items.map((item) => item * (1 - discountPercent / 100)).toList();
  }

  cartItems = applyDiscount(cartItems, 10); // Apply 10% discount
  print('After 10% Discount: $cartItems');

  // 3. Calculate Total with optional tax
  double calculateTotal(List<double> items, {double taxRate = 0.0}) {
    double subtotal = items.reduce((a, b) => a + b);
    return subtotal + (subtotal * taxRate / 100);
  }

  double totalWithTax = calculateTotal(cartItems, taxRate: 8); // 8% tax
  print('Total with Tax: \$${totalWithTax.toStringAsFixed(2)}');

  // 4. Factorial Discount: Apply discount based on factorial of item count
  int factorial(int n) => (n <= 1) ? 1 : n * factorial(n - 1);

  int itemCount = cartItems.length;
  int factDiscount = factorial(itemCount) % 10; // Keep discount reasonable
  print('Factorial Discount (%): $factDiscount');

  double finalTotal = totalWithTax * (1 - factDiscount / 100);
  print('Final Price after Factorial Discount: \$${finalTotal.toStringAsFixed(2)}');
    
}
//Filter Items: Remove items below $10 using an anonymous function.
//Apply Discount: Use a higher-order function to reduce prices by a percentage.

//Calculate Total: Compute the final price with an optional tax.

//Factorial Discount: Apply an extra discount based on the factorial of item count.

//Display Final Price after all calculations.
