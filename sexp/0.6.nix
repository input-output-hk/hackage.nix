{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sexp";
          version = "0.6";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "scvalex@gmail.com";
        author = "Alexandru Scvortov <scvalex@gmail.com>";
        homepage = "https://github.com/scvalex/sexp";
        url = "";
        synopsis = "S-Expression parsing/printing made fun and easy";
        description = "See the @README.md@ file and the homepage for details.";
        buildType = "Simple";
      };
      components = {
        sexp = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.dlist
            hsPkgs.ghc-prim
            hsPkgs.mtl
            hsPkgs.vector
          ];
        };
        exes = {
          sexp = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.dlist
              hsPkgs.ghc-prim
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.cmdargs
            ];
          };
        };
        tests = {
          conversions = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.dlist
              hsPkgs.ghc-prim
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }