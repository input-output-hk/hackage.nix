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
      specVersion = "1.8";
      identifier = { name = "AERN-Basics"; version = "2011.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Michal Konecny, Jan Duracz";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny (Aston University)";
      homepage = "http://code.google.com/p/aern/";
      url = "";
      synopsis = "foundational type classes for approximating exact real numbers";
      description = "Type-classes abstracting various kinds of approximations for exact entities:\n\n* those that are /near/ to the exact value due to limited granularity\n(eg floating point numbers with fixed granularity (aka precision)\napproximating real numbers or bounded-degree polynomials with floating point coefficients\napproximating continuous functions)\n\n* those that somehow /enclose/ the exact entity, usually using a pair of /endpoints/\n\nType classes are provided to capture:\n\n* the partial, sometimes semi-decided, natural ordering (<=) used in relation to /nearness/\n\n* the partial, sometimes semi-decided, refinement ordering (&#8849;) used in relation to /enclosure/\n\nThis package does not compile with ghc 7.0.* due to a\ncompiler bug that has been fixed for the 7.2.1 release.\nHaddock documentation can be found via <http://code.google.com/p/aern/wiki/Main>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
        ];
        buildable = true;
      };
      exes = {
        "toolAERN-bench-csv-to-gnuplot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }