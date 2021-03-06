// Copyright 2019 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  final IntegrationTestWidgetsFlutterBinding binding =
      IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('passing test', (WidgetTester tester) async {
    expect(true, true);
  });

  testWidgets('failing test', (WidgetTester tester) async {
    expect(true, false);
  });

  tearDownAll(() {
    print(
        'IntegrationTestWidgetsFlutterBinding test results: ${jsonEncode(binding.results)}');
  });
}
