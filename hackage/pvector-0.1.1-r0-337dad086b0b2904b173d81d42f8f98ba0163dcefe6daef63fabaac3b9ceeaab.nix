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
      identifier = { name = "pvector"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 Brian Shu";
      maintainer = "littlebubu.shu@gmail.com";
      author = "Brian Shu";
      homepage = "https://github.com/oberblastmeister/pvector";
      url = "";
      synopsis = "Fast persistent vectors";
      description = "An persistent vector is an efficient sequence data structure.\nIt supports fast indexing, iteration, and snocing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector-stream" or (errorHandler.buildDepError "vector-stream"))
        ] ++ (if flags.debug
          then [
            (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
          ]
          else [
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ]);
        buildable = true;
      };
      tests = {
        "pvector-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-stream" or (errorHandler.buildDepError "vector-stream"))
            (hsPkgs."pvector" or (errorHandler.buildDepError "pvector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
          ] ++ (if flags.debug
            then [
              (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            ]
            else [
              (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ]);
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
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-stream" or (errorHandler.buildDepError "vector-stream"))
            (hsPkgs."pvector" or (errorHandler.buildDepError "pvector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."rrb-vector" or (errorHandler.buildDepError "rrb-vector"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."persistent-vector" or (errorHandler.buildDepError "persistent-vector"))
          ] ++ (if flags.debug
            then [
              (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            ]
            else [
              (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ]);
          buildable = true;
        };
      };
    };
  }