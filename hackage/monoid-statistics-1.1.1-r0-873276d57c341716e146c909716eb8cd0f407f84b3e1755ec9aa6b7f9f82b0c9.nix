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
      identifier = { name = "monoid-statistics"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://github.com/Shimuuar/monoid-statistics";
      url = "";
      synopsis = "Monoids for calculation of statistics of sample";
      description = "Monoids for calculation of statistics of sample. This approach\nallows to calculate many statistics in one pass over data and\npossibility to parallelize calculations. However not all statistics\ncould be calculated this way.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
        ];
        buildable = true;
      };
      tests = {
        "monoid-statistics-tests" = {
          depends = [
            (hsPkgs."monoid-statistics" or (errorHandler.buildDepError "monoid-statistics"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "monoid-statistics-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."monoid-statistics" or (errorHandler.buildDepError "monoid-statistics"))
          ];
          buildable = (if compiler.isGhcjs && true
            then false
            else true) && (if compiler.isGhc && compiler.version.ge "9.0" && (compiler.isGhc && compiler.version.lt "9.1")
            then false
            else true) && (if compiler.isGhc && compiler.version.ge "9.2" && (compiler.isGhc && compiler.version.lt "9.3")
            then false
            else true);
        };
      };
      benchmarks = {
        "monoid-stat-bench" = {
          depends = [
            (hsPkgs."monoid-statistics" or (errorHandler.buildDepError "monoid-statistics"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }