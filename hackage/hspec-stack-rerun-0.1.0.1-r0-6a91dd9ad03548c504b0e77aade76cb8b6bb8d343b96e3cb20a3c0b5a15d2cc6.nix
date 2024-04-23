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
      identifier = { name = "hspec-stack-rerun"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "AllRightsReserved";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton";
      homepage = "https://github.com/mwotton/hspec-stack-rerun#readme";
      url = "";
      synopsis = "Simple project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
    };
  }