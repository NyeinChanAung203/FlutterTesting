import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/models/favorites.dart';

void main() {
  group("Testing App Provider", () {
    final favorites = Favorites();

    test('A new item shoud be added', () {
      var number = 35;
      favorites.add(number);

      expect(favorites.items.contains(number), true);
    });

    test('An old item shoud be remove', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
