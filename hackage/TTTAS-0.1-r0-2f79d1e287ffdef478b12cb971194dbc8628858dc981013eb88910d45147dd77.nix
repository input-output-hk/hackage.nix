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
      identifier = { name = "TTTAS"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Arthur Baars <abaars@iti.upv.es>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Center/TTTAS";
      url = "";
      synopsis = "Typed Transformations of Typed Abstract Syntax";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }