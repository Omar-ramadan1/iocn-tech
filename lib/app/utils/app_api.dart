
class Urls {
    static const  String baseUrl ="https://nottr.app/";
    static const  String login ="${baseUrl}api/auth/login";
    static const  String branches ="${baseUrl}api/branches";
    static const  String categories ="${baseUrl}api/branch/{branch_id}/categories";
    static const  String products ="${baseUrl}api/branch/{branch_id}/category/{category_id}/products?paginate=10&page=1";
}

