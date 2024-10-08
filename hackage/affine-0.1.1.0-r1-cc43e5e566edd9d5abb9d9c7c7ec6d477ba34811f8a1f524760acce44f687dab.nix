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
      specVersion = "1.10";
      identifier = { name = "affine"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "None";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Affine spaces (generalized)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."alg" or (errorHandler.buildDepError "alg"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }