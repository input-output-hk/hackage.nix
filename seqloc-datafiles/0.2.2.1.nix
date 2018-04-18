{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "seqloc-datafiles";
          version = "0.2.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nick@ingolia.org";
        author = "Nick Ingolia";
        homepage = "http://www.ingolia-lab.org/seqloc-datafiles-tutorial.html";
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