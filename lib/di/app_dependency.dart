import 'app_dependency.config.dart';
import './di.dart';

final GetIt getIt = GetIt.instance;

const stage = Environment("stage");

@InjectableInit(
  initializerName: r'initGetIt',
  preferRelativeImports: true,
)
Future<void> createDependencyGraph([Environment environment = dev]) async {
  getIt.initGetIt(environment: environment.name);
}
