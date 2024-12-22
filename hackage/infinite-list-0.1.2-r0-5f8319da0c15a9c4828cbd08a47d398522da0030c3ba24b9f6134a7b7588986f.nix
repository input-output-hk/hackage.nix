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
      identifier = { name = "infinite-list"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "https://github.com/Bodigrim/infinite-list";
      url = "";
      synopsis = "Infinite lists";
      description = "Modern lightweight library for infinite lists with fusion:\n\n* API similar to \"Data.List\".\n* No dependencies other than `base`.\n* Top performance, driven by fusion.\n* Avoid dangerous instances like `Foldable`.\n* Use `NonEmpty` where applicable.\n* Use `Word` for indices.\n* Be lazy, but not too lazy.\n\n@\n{\\-# LANGUAGE PostfixOperators #-\\}\nimport Data.List.Infinite (Infinite(..), (...), (....))\nimport qualified Data.List.Infinite as Inf\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "infinite-properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "infinite-properties-O0" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "infinite-fusion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-inspection-testing" or (errorHandler.buildDepError "tasty-inspection-testing"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.2"
            then false
            else true;
        };
      };
      benchmarks = {
        "infinite-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }