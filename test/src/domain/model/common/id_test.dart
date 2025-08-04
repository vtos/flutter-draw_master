import 'package:draw_master/src/domain/model/common/id.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
    test('test it can be instantiated from a UUID string and return the UUID string', () {
        String uuid = 'f41c9705-fa55-4d8e-b0f7-c5738f97b33a';
        var id = new Id(uuid);

        expect(id.asString(), uuid);
    });

    test('it can be instantiated with a generated UUID string', () {
        var id = Id.generateNew();
        var anotherId = new Id(id.asString());

        expect(id.asString(), anotherId.asString());
    });

    test('it cannot be instanitated with an invalid UUID string', () {
        expect(() => new Id('invalid-uuid-string'), throwsA(const TypeMatcher<FormatException>()));
    });
}
