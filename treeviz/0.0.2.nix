{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "treeviz";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 David Banas; all rights reserved World wide.";
        maintainer = "capn.freako@gmail.com";
        author = "David B. Banas";
        homepage = "";
        url = "";
        synopsis = "Visualization of computation decomposition trees.";
        description = "This Haskell package provides some tools for visualizing the decomposition\nof different divide and conquer algorithms.";
        buildType = "Simple";
      };
      components = {
        treeviz = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.random
          ];
        };
        exes = {
          treeviz = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
            ];
          };
        };
        tests = {
          test-treeviz = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
            ];
          };
        };
      };
    }