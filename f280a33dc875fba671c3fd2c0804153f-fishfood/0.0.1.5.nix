{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fishfood";
          version = "0.0.1.5";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2013-2015 Dr. Alistair Ward";
        maintainer = "mailto <colon> fishfood <at> functionalley <dot> eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu";
        url = "";
        synopsis = "Calculates file-size frequency-distribution.";
        description = "Counts the number of files in a set of bins, each of which holds only those files which fall within a specific size-interval.";
        buildType = "Simple";
      };
      components = {
        fishfood = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.factory
            hsPkgs.mtl
            hsPkgs.toolshed
          ];
        };
        exes = {
          fishfood = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.fishfood
              hsPkgs.mtl
              hsPkgs.toolshed
            ];
          };
        };
        tests = {
          quickCheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.fishfood
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.toolshed
            ];
          };
        };
      };
    }