{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      enable-extra-tests = false;
      enable-pthreads = true;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "abcBridge";
        version = "0.15";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2015 Galois Inc.";
      maintainer = "jhendrix@galois.com, rdockins@galois.com";
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
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.aig)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.vector)
        ];
        libs = [
          (pkgs."abc")
        ] ++ pkgs.lib.optional (flags.enable-pthreads) (pkgs."pthread");
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "find-segfault" = {
          depends = pkgs.lib.optionals (!(!flags.enable-extra-tests)) [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.abcBridge)
            (hsPkgs.aig)
            (hsPkgs.directory)
            (hsPkgs.vector)
            (hsPkgs.random)
            (hsPkgs.tf-random)
            (hsPkgs.unix)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
        "long-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.abcBridge)
          ];
        };
      };
      tests = {
        "abc-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.abcBridge)
            (hsPkgs.aig)
            (hsPkgs.directory)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }