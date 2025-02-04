import 'package:deep_care_case_study/data/data.dart';
import 'package:deep_care_case_study/domain/domain.dart';

@injectable
class GetRandomNumberUseCase extends SupplierUseCase<int> {
  final HomeRepo _homeRepo;
  const GetRandomNumberUseCase({required HomeRepo homeRepo})
      : _homeRepo = homeRepo;
  @override
  Future<int> task() {
    return _homeRepo.getRandomNumber();
  }
}
