{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      enable-pthreads = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "abcBridge";
          version = "0.10.0.0";
        };
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
        abcBridge = {
          depends  = [
            hsPkgs.base
            hsPkgs.aig
            hsPkgs.directory
            hsPkgs.vector
          ];
          libs = [
            pkgs.abc
          ] ++ pkgs.lib.optional _flags.enable-pthreads pkgs.pthread;
        };
        exes = {
          long-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.abcBridge
            ];
          };
        };
        tests = {
          abc-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.abcBridge
              hsPkgs.aig
              hsPkgs.directory
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.vector
            ];
          };
        };
      };
    }