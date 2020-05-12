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
      identifier = { name = "bank-holidays-england"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Turner 2014-2019";
      maintainer = "dave.c.turner@gmail.com";
      author = "David Turner";
      homepage = "https://github.com/DaveCTurner/bank-holidays-england";
      url = "";
      synopsis = "Calculation of bank holidays in England and Wales";
      description = "Calculation of bank holidays in England and Wales, using the rules that have\nbeen in place since 1978, and including all exceptions to the rules in the\nyears 1995 to 2020.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bank-holidays-england" or (errorHandler.buildDepError "bank-holidays-england"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }