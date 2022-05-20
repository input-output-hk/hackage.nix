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
      identifier = { name = "interval-patterns"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Melanie Brown";
      maintainer = "brown.m@pm.me";
      author = "Melanie Brown";
      homepage = "https://github.com/cigsender/interval-patterns";
      url = "";
      synopsis = "";
      description = "A library for easy manipulation of intervals according to their overlap.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."interval-patterns" or (errorHandler.buildDepError "interval-patterns"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }