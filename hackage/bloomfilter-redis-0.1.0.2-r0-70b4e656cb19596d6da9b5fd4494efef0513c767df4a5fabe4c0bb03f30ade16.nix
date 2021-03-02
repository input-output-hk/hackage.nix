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
      identifier = { name = "bloomfilter-redis"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Tobias Markus <tobias AT miglix DOT eu>";
      maintainer = "Tobias Markus <tobias AT miglix DOT eu>";
      author = "Tobias Markus <tobias AT miglix DOT eu>";
      homepage = "";
      url = "";
      synopsis = "Distributed bloom filters on Redis (using the Hedis client).";
      description = "Distributed bloom filters on Redis (using the Hedis client).\n\nThe hash family algorithm is partly inspired by\nBrian O\\'Sullivan\\'s bloomfilter package at <https://hackage.haskell.org/package/bloomfilter>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          ];
        buildable = true;
        };
      tests = {
        "test-bloomfilter-redis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloomfilter-redis" or (errorHandler.buildDepError "bloomfilter-redis"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-rerun" or (errorHandler.buildDepError "tasty-rerun"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-bloomfilter-redis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloomfilter-redis" or (errorHandler.buildDepError "bloomfilter-redis"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }