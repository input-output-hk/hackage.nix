{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "bioinformatics-toolkit";
          version = "0.2.4";
        };
        license = "MIT";
        copyright = "(c) 2014-2016 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "A collection of bioinformatics tools";
        description = "A collection of bioinformatics tools";
        buildType = "Simple";
      };
      components = {
        "bioinformatics-toolkit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.case-insensitive
            hsPkgs.clustering
            hsPkgs.colour
            hsPkgs.conduit-combinators
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.double-conversion
            hsPkgs.http-conduit
            hsPkgs.hexpat
            hsPkgs.matrices
            hsPkgs.mtl
            hsPkgs.math-functions
            hsPkgs.parallel
            hsPkgs.primitive
            hsPkgs.palette
            hsPkgs.split
            hsPkgs.statistics
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.word8
            hsPkgs.IntervalMap
          ];
        };
        exes = {
          "mkindex" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bioinformatics-toolkit
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          "viewSeq" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bioinformatics-toolkit
              hsPkgs.bytestring
            ];
          };
          "mergeMotifs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bioinformatics-toolkit
              hsPkgs.bytestring
              hsPkgs.clustering
              hsPkgs.data-default-class
              hsPkgs.double-conversion
              hsPkgs.split
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.random
              hsPkgs.vector
              hsPkgs.data-default-class
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.tasty-hunit
              hsPkgs.bioinformatics-toolkit
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.matrices
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bioinformatics-toolkit
              hsPkgs.random
              hsPkgs.criterion
              hsPkgs.clustering
              hsPkgs.bytestring
              hsPkgs.data-default-class
              hsPkgs.conduit
              hsPkgs.mtl
            ];
          };
        };
      };
    }