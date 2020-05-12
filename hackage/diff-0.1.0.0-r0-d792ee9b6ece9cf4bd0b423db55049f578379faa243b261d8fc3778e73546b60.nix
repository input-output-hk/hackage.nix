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
      identifier = { name = "diff"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Diff and patch";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Enum" or (errorHandler.buildDepError "Enum"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."util" or (errorHandler.buildDepError "util"))
          ];
        buildable = true;
        };
      };
    }