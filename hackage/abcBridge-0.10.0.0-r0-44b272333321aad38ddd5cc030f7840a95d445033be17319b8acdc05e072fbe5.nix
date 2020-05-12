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
    flags = { enable-pthreads = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "abcBridge"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2014 Galois Inc.";
      maintainer = "jhendrix@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Bindings for ABC, A System for Sequential\nSynthesis and Verification";
      description = "Bindings for ABC focused on creating And-Inverter\nGraphs (AIG) and then performing synthesis and\nequivalence checking.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aig" or (errorHandler.buildDepError "aig"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [
          (pkgs."abc" or (errorHandler.sysDepError "abc"))
          ] ++ (pkgs.lib).optional (flags.enable-pthreads) (pkgs."pthread" or (errorHandler.sysDepError "pthread"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "long-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."abcBridge" or (errorHandler.buildDepError "abcBridge"))
            ];
          buildable = true;
          };
        };
      tests = {
        "abc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."abcBridge" or (errorHandler.buildDepError "abcBridge"))
            (hsPkgs."aig" or (errorHandler.buildDepError "aig"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }