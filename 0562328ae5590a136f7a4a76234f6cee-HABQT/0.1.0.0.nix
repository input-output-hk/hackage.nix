{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HABQT";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2018 Leonid Belinsky";
        maintainer = "belinsky.leonid@gmail.com";
        author = "Leonid Belinsky";
        homepage = "https://github.com/Belinsky-L-V/HABQT#readme";
        url = "";
        synopsis = "Hierarchical adaptive Bayesian quantum tomography for quantum bits";
        description = "Extends adaptive Bayesian quantum tomography as described in\n<https://doi.org/10.1103/PhysRevA.85.052120> by using a hierarchical\ndistribution over density matrices of all possible ranks.\n\n\\Includes:\n\n* a Haskell library\n\n* a shared library which provides a C\ninterface to the tomography function\n\n* an executable that simulates\ntomography of random states and outputs infidelity between true states and\nmean Bayesian estimates to a file\n\nPlease refer to @HABQT-simulation \\-\\-help@ for executable usage\ninstructions,\n<https://github.com/Belinsky-L-V/HABQT#readme README on Github>\nfor installation instructions and shared library C ABI description,\naccompanying Haddock documentation for Haskell API.";
        buildType = "Simple";
      };
      components = {
        HABQT = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.hmatrix-gsl
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.newtype-generics
            hsPkgs.streaming
            hsPkgs.utility-ht
            hsPkgs.vector
            hsPkgs.validation
          ];
        };
        foreignlibs = {
          HABQT = {
            depends  = [
              hsPkgs.HABQT
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.mwc-random
              hsPkgs.validation
              hsPkgs.hmatrix
              hsPkgs.vector
            ];
          };
        };
        exes = {
          HABQT-simulation = {
            depends  = [
              hsPkgs.HABQT
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.streaming
            ];
          };
        };
        tests = {
          HABQT-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.HABQT
              hsPkgs.base
              hsPkgs.hmatrix
              hsPkgs.mwc-random
              hsPkgs.streaming
              hsPkgs.utility-ht
              hsPkgs.vector
              hsPkgs.newtype-generics
            ];
          };
        };
      };
    }