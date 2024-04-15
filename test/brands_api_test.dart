import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for BrandsApi
void main() {
  final instance = DartDioSdk().getBrandsApi();

  group(BrandsApi, () {
    //Future brandsControllerCreateBrand(CreateBrandDto createBrandDto) async
    test('test brandsControllerCreateBrand', () async {
      // TODO
    });

    //Future brandsControllerDeleteBrand(String id) async
    test('test brandsControllerDeleteBrand', () async {
      // TODO
    });

    //Future<Brand> brandsControllerGetBrand(String id) async
    test('test brandsControllerGetBrand', () async {
      // TODO
    });

    //Future<BrandInfinityPaginationResult> brandsControllerGetBrands({ num page, num limit, String filters, String sort }) async
    test('test brandsControllerGetBrands', () async {
      // TODO
    });

    //Future brandsControllerUpdateBrand(String id, UpdateBrandDto updateBrandDto) async
    test('test brandsControllerUpdateBrand', () async {
      // TODO
    });

  });
}
