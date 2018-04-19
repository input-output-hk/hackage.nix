{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "perfecthash";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Wotton <mwotton@gmail.com>";
        author = "Mark Wotton <mwotton@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A perfect hashing library for mapping bytestrings to values.";
        description = "A perfect hashing library for mapping bytestrings to values.\nInsertion is not supported (by design): Only fromList\nand lookup operations are supported.\nCI at https://travis-ci.org/mwotton/PerfectHash";
        buildType = "Simple";
      };
      components = {
        perfecthash = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.cmph
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.time
          ];
        };
        tests = {
          cmph-test = {
            depends  = [
              hsPkgs.cmph
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.perfecthash
              hsPkgs.bytestring
              hsPkgs.containers
            ];
          };
        };
        benchmarks = {
          bench-foo = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.perfecthash
              hsPkgs.unordered-containers
              hsPkgs.deepseq
            ];
          };
        };
      };
    }