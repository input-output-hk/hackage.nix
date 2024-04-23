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
      specVersion = "1.2";
      identifier = { name = "GiST"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Mihail Bogojeski (mihailbogojeski@gmail.com)";
      author = "Mihail Bogojeski, Alexander Svozil ";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of a Generalized Search Tree (GiST)";
      description = "A simple implementation of the GiST data structure, including a couple of basic\npredicates used for implementing a GiST based B+ or R-tree. The GiST is also\ncapable und working with any user defined instance of the class Predicates,\nmaking this package perfect for developing and testing new types of balanced\ntrees.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }