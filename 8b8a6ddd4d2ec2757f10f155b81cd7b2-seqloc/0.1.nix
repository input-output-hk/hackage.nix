{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "seqloc";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nick@ingolia.org";
        author = "Nick Ingolia";
        homepage = "http://www.ingolia-lab.org/software/seqloc/";
        url = "";
        synopsis = "Handle sequence locations for bioinformatics";
        description = "Handle sequence locations for bioinformatics";
        buildType = "Simple";
      };
      components = {
        seqloc = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.haskell98
            hsPkgs.attoparsec
          ];
        };
        exes = {
          test-seqloc = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.haskell98
              hsPkgs.attoparsec
              hsPkgs.QuickCheck
              hsPkgs.random
            ];
          };
        };
      };
    }