import 'package:flutter_test/flutter_test.dart';
import 'package:store_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('DetailsViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
