import 'package:uuid/uuid.dart';
import 'package:uuid/validation.dart';

/// Represents a value object to be used throughout the application as an entity's identifier.
/// 
/// Internally, it uses the 'uuid' package (https://pub.dev/packages/uuid) to generate and validate UUID's.
class Id {

    /// UUID string, like 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'.
    String uuid;

    /// The constructor.
    Id(this.uuid) {
        UuidValidation.isValidOrThrow(fromString: uuid);
    }

    /// A factory constructor.
    /// 
    /// Generates a new v4 UUID and instantiates an object with it.
    factory Id.generateNew() {
        var uuidProvider = Uuid();

        return Id(uuidProvider.v4());
    }

    /// Converts the object to the UUID string it holds, like 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'.
    String asString() {
        return uuid;
    }
}
