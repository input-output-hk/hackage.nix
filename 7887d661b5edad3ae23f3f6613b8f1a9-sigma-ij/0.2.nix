{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "sigma-ij";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010, 2016 Balazs Komuves";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "Thom polynomials of second order Thom-Boardman singularities";
        description = "A program to compute Thom polynomials of second order Thom-Boardman\nsingularities, using the localization method described in the\nauthor's PhD thesis <http://renyi.hu/~komuves/phdthesis.pdf>.";
        buildType = "Simple";
      };
      components = {
        "sigma-ij" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.time
            hsPkgs.parsec2
            hsPkgs.optparse-applicative
            hsPkgs.combinat
          ];
        };
        exes = {
          "sigma-ij" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.time
              hsPkgs.parsec2
              hsPkgs.optparse-applicative
              hsPkgs.combinat
            ];
          };
        };
      };
    }