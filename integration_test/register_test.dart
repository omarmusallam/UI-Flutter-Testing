import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:omer_design/constants_keys/const_keys.dart';
import 'package:grocery_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("group_auth", () {
    testWidgets("registerScreen", (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Name), "Omar");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Email), "Omar@gmail.com");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Password), "omar123456");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Phone), "0599984799");
      await tester.pumpAndSettle(const Duration(seconds: 1));


      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.press(find.byKey(ConstKey.SignUp));
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.testTextInput.receiveAction(TextInputAction.done);
    });
  });
}
