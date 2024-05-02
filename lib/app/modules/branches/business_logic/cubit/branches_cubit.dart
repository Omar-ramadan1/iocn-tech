// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:iocn_demo_project/app/modules/branches/data/repository/branches_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
part 'branches_state.dart';

class BranchesCubit extends Cubit<BranchesState> {
  final BranchesRepository branchesRepository;
  dynamic branchess = {};
  BranchesCubit(this.branchesRepository) : super(BranchesInitial());

  dynamic getAllCharacters() {
    branchesRepository.getAllbranches().then((branches) {
      print('ssssssssssssss');
      print(branches);
      emit(BranchesLoaded(branches));
      branchess = branches;
 print('branchessss is');
    print(branchess);
        return branchess;

    });

  }
}
