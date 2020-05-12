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
      identifier = { name = "constructive-algebra"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mortberg@student.chalmers.se";
      author = "Anders Mortberg, Bassel Mannaa";
      homepage = "";
      url = "";
      synopsis = "A library of constructive algebra.";
      description = "A library of constructive algebra.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }