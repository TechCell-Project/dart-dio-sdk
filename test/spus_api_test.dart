import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for SpusApi
void main() {
  final instance = DartDioSdk().getSpusApi();

  group(SpusApi, () {
    //Future sPUControllerAddSpuModels(String id, AddSpuModelDto addSpuModelDto) async
    test('test sPUControllerAddSpuModels', () async {
      // TODO
    });

    //Future sPUControllerCreateSPU(CreateSpuDto createSpuDto) async
    test('test sPUControllerCreateSPU', () async {
      // TODO
    });

    //Future<SPU> sPUControllerGetSPU(String id) async
    test('test sPUControllerGetSPU', () async {
      // TODO
    });

    //Future<SpuInfinityPaginationResult> sPUControllerGetSPUs({ num page, num limit, String filters, String sort }) async
    test('test sPUControllerGetSPUs', () async {
      // TODO
    });

    //Future sPUControllerUpdateSPU(String id, UpdateSpuDto updateSpuDto) async
    test('test sPUControllerUpdateSPU', () async {
      // TODO
    });

    //Future sPUControllerUpdateSpuModel(String id, String slug, UpdateSPUModelSchemaDto updateSPUModelSchemaDto) async
    test('test sPUControllerUpdateSpuModel', () async {
      // TODO
    });

  });
}
