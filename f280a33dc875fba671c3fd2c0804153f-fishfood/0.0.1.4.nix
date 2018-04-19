{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fishfood";
          version = "0.0.1.4";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2013-2015 Dr. Alistair Ward";
        maintainer = "fishfood <at> functionalley <dot> eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu";
        url = "";
        synopsis = "Calculates file-size frequency-distribution.";
        description = "Counts the number of files in a set of bins, each of which holds only those files which fall within a specific size-interval.";
        buildType = "Simple";
      };
      components = {
        exes = {
          fishfood = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.factory
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.toolshed
            ];
          };
        };
      };
    }