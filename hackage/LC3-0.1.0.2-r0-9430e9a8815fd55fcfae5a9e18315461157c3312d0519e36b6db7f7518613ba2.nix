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
      identifier = { name = "LC3"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2019";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "LC-3 virtual machine";
      description = "Haskell implementation of the LC-3 VM";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LC3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }