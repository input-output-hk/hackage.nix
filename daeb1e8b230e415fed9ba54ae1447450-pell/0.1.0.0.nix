{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20.0";
        identifier = {
          name = "pell";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2015 by Dr. Lars Brünjes";
        maintainer = "lbrunjes@gmx.de";
        author = "Lars Bruenjes";
        homepage = "https://github.com/brunjlar/pell";
        url = "";
        synopsis = "Package to solve the Generalized Pell Equation.";
        description = "Finds all solutions of the generalized Pell Equation.";
        buildType = "Simple";
      };
      components = {
        pell = {
          depends  = [
            hsPkgs.base
            hsPkgs.arithmoi
            hsPkgs.containers
          ];
        };
        tests = {
          test-pell = {
            depends  = [
              hsPkgs.base
              hsPkgs.arithmoi
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.primes
              hsPkgs.Cabal
              hsPkgs.cabal-test-quickcheck
            ];
          };
        };
      };
    }