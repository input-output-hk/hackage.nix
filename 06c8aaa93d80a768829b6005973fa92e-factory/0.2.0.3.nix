{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
      threaded = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "factory";
          version = "0.2.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2011 Dr. Alistair Ward";
        maintainer = "factory <at> functionalley <dot> eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu";
        url = "";
        synopsis = "Rational arithmetic in an irrational world.";
        description = "A library of number-theory functions, for; factorials, square-roots, Pi and primes.";
        buildType = "Simple";
      };
      components = {
        factory = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.primes
            hsPkgs.random
            hsPkgs.toolshed
          ] ++ [ hsPkgs.parallel ];
        };
        exes = {
          factory = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }