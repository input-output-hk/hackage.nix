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
    flags = { enable-pthreads = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "abcBridge"; version = "0.11"; };
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."abc" or (errorHandler.sysDepError "abc"))
        ] ++ pkgs.lib.optional (flags.enable-pthreads) (pkgs."pthread" or (errorHandler.sysDepError "pthread"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
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
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-ant-xml" or (errorHandler.buildDepError "tasty-ant-xml"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }