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
      identifier = { name = "haggle"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tristan@ravit.ch";
      author = "Tristan Ravitch";
      homepage = "https://github.com/travitch/haggle";
      url = "";
      synopsis = "A graph library offering mutable, immutable, and inductive graphs";
      description = "This library provides mutable (in ST or IO), immutable, and inductive graphs.\nThere are multiple graphs implementations provided to support different use\ncases and time/space tradeoffs.  It is a design goal of haggle to be flexible\nand allow users to \"pay as they go\".  Node and edge labels are optional.  Haggle\nalso aims to be safer than fgl: there are no partial functions in the API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "GraphTests" = {
          depends = [
            (hsPkgs."haggle" or (errorHandler.buildDepError "haggle"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "haggleBench" = {
          depends = [
            (hsPkgs."haggle" or (errorHandler.buildDepError "haggle"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "8.4"
            then true
            else false;
        };
      };
    };
  }