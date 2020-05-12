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
      identifier = { name = "table"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/table";
      url = "";
      synopsis = "Simple tool to generate tables from DSV input";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "table" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            ];
          buildable = true;
          };
        };
      };
    }