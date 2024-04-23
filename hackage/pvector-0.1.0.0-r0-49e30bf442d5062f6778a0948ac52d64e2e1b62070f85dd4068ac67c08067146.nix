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
    flags = { debug = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "pvector"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Brian Shu";
      maintainer = "littlebubu.shu@gmail.com";
      author = "Brian Shu";
      homepage = "https://github.com/oberblastmeister/pvector";
      url = "";
      synopsis = "Fast persistent vectors";
      description = "An persistent vector is an efficient sequence data structure.\nIt supports fast indexing, iteration, snocing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector-stream" or (errorHandler.buildDepError "vector-stream"))
        ];
        buildable = true;
      };
      tests = {
        "pvector-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-stream" or (errorHandler.buildDepError "vector-stream"))
            (hsPkgs."pvector" or (errorHandler.buildDepError "pvector"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "pvector-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-stream" or (errorHandler.buildDepError "vector-stream"))
            (hsPkgs."pvector" or (errorHandler.buildDepError "pvector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."rrb-vector" or (errorHandler.buildDepError "rrb-vector"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."persistent-vector" or (errorHandler.buildDepError "persistent-vector"))
          ];
          buildable = true;
        };
      };
    };
  }