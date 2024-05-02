part of 'branches_cubit.dart';

@immutable
abstract class BranchesState {}

final class BranchesInitial extends BranchesState {}


class BranchesLoaded extends BranchesState{
  final dynamic branches;
  BranchesLoaded(this.branches);
}
