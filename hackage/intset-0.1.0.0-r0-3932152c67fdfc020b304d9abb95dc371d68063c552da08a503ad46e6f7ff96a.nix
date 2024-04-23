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
    flags = { testing = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "intset"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam T.";
      maintainer = "Sam T. <pxqr.sta@gmail.com>";
      author = "Sam T.";
      homepage = "https://github.com/pxqr/intset";
      url = "";
      synopsis = "Pure, fast and memory efficient integer sets.";
      description = "This library provides persistent, time and space efficient integer\nsets implemented as dense big-endian patricia trees with buddy\nsuffixes compaction. In randomized settings this structure expected\nto be as fast as Data.IntSet from containers, but if a sets is\nlikely to have long continuous intervals it should be much faster.\n\n[/Release notes/]\n\n* /0.1.0.0:/ Initial version.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bits-extras" or (errorHandler.buildDepError "bits-extras"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."intset" or (errorHandler.buildDepError "intset"))
          ];
          buildable = if !flags.testing then false else true;
        };
        "fusion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."intset" or (errorHandler.buildDepError "intset"))
          ];
          buildable = if !flags.testing then false else true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."intset" or (errorHandler.buildDepError "intset"))
          ];
          buildable = if !flags.testing then false else true;
        };
      };
    };
  }