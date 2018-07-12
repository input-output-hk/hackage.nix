{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "accelerate-io";
          version = "1.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "Manuel M T Chakravarty,\nGabriele Keller,\nSean Seefried,\nTrevor L. McDonell";
        homepage = "https://github.com/AccelerateHS/accelerate-io";
        url = "";
        synopsis = "Read and write Accelerate arrays in various formats";
        description = "This package provides efficient conversion routines between a range of array\ntypes and Accelerate arrays.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>";
        buildType = "Simple";
      };
      components = {
        "accelerate-io" = {
          depends  = [
            hsPkgs.base
            hsPkgs.accelerate
            hsPkgs.array
            hsPkgs.bmp
            hsPkgs.bytestring
            hsPkgs.primitive
            hsPkgs.repa
            hsPkgs.vector
          ];
        };
        tests = {
          "test-io" = {
            depends  = [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-io
              hsPkgs.array
              hsPkgs.hedgehog
              hsPkgs.tasty
              hsPkgs.tasty-hedgehog
              hsPkgs.vector
            ];
          };
        };
      };
    }