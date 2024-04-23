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
      specVersion = "2.2";
      identifier = { name = "criterion-cmp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020-2021 Oleg Grenrus, 2016-2020 Ben Gamari";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>, Ben Gamari <ben@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "A simple tool for comparing in Criterion benchmark results";
      description = "Output a table containing a comparison of results for the input files\nBased on https://github.com/bgamari/criterion-compare";
      buildType = "Simple";
    };
    components = {
      exes = {
        "criterion-cmp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }