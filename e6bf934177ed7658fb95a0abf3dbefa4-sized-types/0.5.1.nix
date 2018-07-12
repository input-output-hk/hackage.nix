{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      all = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sized-types";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2013 The University of Kansas";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "http://www.ittc.ku.edu/csdl/fpg/Tools";
        url = "";
        synopsis = "Sized types in Haskell using the GHC Nat kind.";
        description = "Providing matrixes, sparse matrixes, and signed and unsigned bit vectors, using GHC Nat kind.";
        buildType = "Simple";
      };
      components = {
        "sized-types" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.singletons
          ];
        };
        exes = {
          "sized-types-example1" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.sized-types
            ];
          };
        };
        tests = {
          "sized-types-test1" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.sized-types
            ];
          };
        };
      };
    }