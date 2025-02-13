
// Kolay yöntem

class NavigationRoute{
  static const String HOME = "/routehome";
  static const String HOME_DETAIL = "/routedetail";

  //enum yapınca bunu yapmak gerekli:
  String? navRouteConverter(NavRoute route){
    switch (route){
      case NavRoute.HOME:
        return "/routehome";
      default: "/";

    }
    return null;
  }
}

// Daha iyi yöntem

enum NavRoute{HOME, DETAIL}