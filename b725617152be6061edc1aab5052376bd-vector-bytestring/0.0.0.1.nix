{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      benchmark = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "vector-bytestring";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Bas van Dijk <v.dijk.bas@gmail.com>";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "https://github.com/basvandijk/vector-bytestring";
        url = "";
        synopsis = "ByteStrings as type synonyms of Storable Vectors of Word8s";
        description = "ByteStrings as type synonyms of Storable Vectors of Word8s";
        buildType = "Simple";
      };
      components = {
        vector-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.ghc-prim
            hsPkgs.vector
            hsPkgs.deepseq
            hsPkgs.bytestring
          ];
        };
        exes = {
          bench = {
            depends  = [
              hsPkgs.vector-bytestring
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.criterion
            ];
          };
        };
        tests = {
          prop-compiled = {
            depends  = [
              hsPkgs.vector-bytestring
              hsPkgs.base
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }