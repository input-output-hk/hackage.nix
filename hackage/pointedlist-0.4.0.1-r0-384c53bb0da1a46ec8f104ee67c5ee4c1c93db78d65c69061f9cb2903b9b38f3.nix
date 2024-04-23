{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "pointedlist"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeffwheeler@gmail.com";
      author = "Jeff Wheeler";
      homepage = "";
      url = "";
      synopsis = "A zipper-like comonad which works as a list, tracking a position.";
      description = "A PointedList tracks the position in a non-empty list which works similarly\nto a zipper. A current item is always required, and therefore the list may\nnever be empty.\nA circular PointedList wraps around to the other end when progressing past\nthe actual edge.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
        ];
        buildable = true;
      };
    };
  }