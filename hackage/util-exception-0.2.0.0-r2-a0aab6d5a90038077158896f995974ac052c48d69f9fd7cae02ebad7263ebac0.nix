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
      identifier = { name = "util-exception"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "None";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Exceptional utilities";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basic" or (errorHandler.buildDepError "basic"))
          (hsPkgs."control" or (errorHandler.buildDepError "control"))
          (hsPkgs."lifted-base-tf" or (errorHandler.buildDepError "lifted-base-tf"))
          (hsPkgs."util" or (errorHandler.buildDepError "util"))
        ];
        buildable = true;
      };
    };
  }