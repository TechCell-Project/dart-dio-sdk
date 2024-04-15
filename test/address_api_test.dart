import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for AddressApi
void main() {
  final instance = DartDioSdk().getAddressApi();

  group(AddressApi, () {
    // Get districts
    //
    //Future<BuiltList<GhnDistrictDTO>> addressControllerGetDistricts(num provinceId) async
    test('test addressControllerGetDistricts', () async {
      // TODO
    });

    // Get provinces
    //
    //Future<BuiltList<GhnProvinceDTO>> addressControllerGetProvinces() async
    test('test addressControllerGetProvinces', () async {
      // TODO
    });

    // Get wards
    //
    //Future<BuiltList<GhnWardDTO>> addressControllerGetWards(num districtId) async
    test('test addressControllerGetWards', () async {
      // TODO
    });

  });
}
