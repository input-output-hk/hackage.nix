{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "seqloc-datafiles";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nick@ingolia.org";
        author = "Nick Ingolia";
        homepage = "";
        url = "";
        synopsis = "Read and write BED and GTF format genome annotations";
        description = "Read and write BED and GTF format genome annotations";
        buildType = "Simple";
      };
      components = {
        seqloc-datafiles = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.haskell98
            hsPkgs.attoparsec
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.iteratee
            hsPkgs.seqloc
            hsPkgs.biocore
          ];
        };
        exes = {
          gtf-to-bed = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.haskell98
              hsPkgs.attoparsec
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.iteratee
              hsPkgs.seqloc
              hsPkgs.biocore
              hsPkgs.transformers
              hsPkgs.monads-tf
            ];
          };
          test-gtf = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.haskell98
              hsPkgs.attoparsec
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.iteratee
              hsPkgs.seqloc
              hsPkgs.biocore
              hsPkgs.QuickCheck
              hsPkgs.random
            ];
          };
          test-bed = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.haskell98
              hsPkgs.attoparsec
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.iteratee
              hsPkgs.seqloc
              hsPkgs.biocore
              hsPkgs.QuickCheck
              hsPkgs.random
            ];
          };
          gtf-introns = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.haskell98
              hsPkgs.attoparsec
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.iteratee
              hsPkgs.seqloc
              hsPkgs.biocore
              hsPkgs.QuickCheck
              hsPkgs.random
            ];
          };
        };
      };
    }