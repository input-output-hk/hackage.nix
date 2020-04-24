{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aig" or ((hsPkgs.pkgs-errors).buildDepError "aig"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."abc" or ((hsPkgs.pkgs-errors).sysDepError "abc"))
          ] ++ (pkgs.lib).optional (flags.enable-pthreads) (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "long-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."abcBridge" or ((hsPkgs.pkgs-errors).buildDepError "abcBridge"))
            ];
          buildable = true;
          };
        };
      tests = {
        "abc-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."abcBridge" or ((hsPkgs.pkgs-errors).buildDepError "abcBridge"))
            (hsPkgs."aig" or ((hsPkgs.pkgs-errors).buildDepError "aig"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }