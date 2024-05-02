import 'package:get_it/get_it.dart';
import '../../app/modules/products/data/datasource/remote_datasourse.dart';
import '../../app/modules/products/data/repository/categoty_repository.dart';
import '../../app/modules/products/domain/repository/base_category_repository.dart';
import '../../app/modules/products/domain/usecases/get_category_branch_id.dart';
import 'prefs.dart';


final sl = GetIt.instance;

class ServicesLocator {
  void init() async {
    // /// Bloc
    // sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    // sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));

      //! init external
   final prefs =  await Prefs.init();
     sl.registerLazySingleton(() => prefs);




    /// Use Cases
    sl.registerLazySingleton(() => GetCategorybyBranchId(sl()));


    /// Repository
    sl.registerLazySingleton<BaseCategoryRepository>(
        () => CategoryRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseRemoteDataSource>(
        () => RemoteDataSource());


  }
}