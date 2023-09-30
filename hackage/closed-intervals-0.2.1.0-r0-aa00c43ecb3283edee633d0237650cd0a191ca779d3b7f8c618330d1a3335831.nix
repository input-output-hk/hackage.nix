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
      specVersion = "1.12";
      identifier = { name = "closed-intervals"; version = "0.2.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Lackmann Phymetric GmbH";
      maintainer = "olaf.klinke@phymetric.de, olf@aatal-apotheke.de";
      author = "Olaf Klinke, Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Closed intervals of totally ordered types";
      description = "see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filtrable" or (errorHandler.buildDepError "filtrable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "interval-doctest" = {
          depends = [
            (hsPkgs."closed-intervals" or (errorHandler.buildDepError "closed-intervals"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }