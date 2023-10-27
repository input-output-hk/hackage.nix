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
      specVersion = "3.0";
      identifier = { name = "finite-semigroups"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2023 Dakotah Lambert";
      maintainer = "dakotahlambert@acm.org";
      author = "Dakotah Lambert";
      homepage = "https://github.com/vvulpes0/finite-semigroups";
      url = "";
      synopsis = "Operations and classification for finite semigroups";
      description = "This provides means to construct finite semigroups\nand determine which (ordered) pseudovarieties\nthey belong to.  Some are predefined, but an\narbitrary variety can be specified by equations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      tests = {
        "finite-semigroups-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."finite-semigroups" or (errorHandler.buildDepError "finite-semigroups"))
            ];
          buildable = true;
          };
        };
      };
    }