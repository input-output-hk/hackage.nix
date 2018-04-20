{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "SHA";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@galois.com>";
        author = "Adam Wick <awick@galois.com>";
        homepage = "";
        url = "";
        synopsis = "Implementations of the SHA suite of message digest functions";
        description = "This library implements the SHA suite of message digest functions,\naccording to NIST FIPS 180-2 (with the SHA-224 addendum). The\nfunctions have been tested against most of the NIST test vectors\nfor the various functions. However, only slight attention has\nbeen paid to the speed of the functions.";
        buildType = "Simple";
      };
      components = {
        SHA = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        exes = {
          test_sha = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }