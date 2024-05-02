import '../models/branches.dart';
import '../web_services/branches_web_services.dart';

class BranchesRepository{
    final Brancheswebservices brancheswebservices;
    BranchesRepository(this.brancheswebservices);


    Future<dynamic> getAllbranches() async{
      final branches = await brancheswebservices.getAllbranches();
      print('object');
      print(branches);
      return branches;
    } 
        //   Future<List<Branches>> getAllbranches() async{
        //   var branches = await brancheswebservices.getAllbranches();
        //  return branches[''];
  //  }

}