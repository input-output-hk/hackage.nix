{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scalpel-core";
          version = "0.5.1";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "willcoster@gmail.com";
        author = "Will Coster";
        homepage = "https://github.com/fimad/scalpel";
        url = "";
        synopsis = "A high level web scraping library for Haskell.";
        description = "Scalpel core provides a subset of the scalpel web scraping library that is\nintended to have lightweight dependencies and to be free of all non-Haskell\ndependencies.";
        buildType = "Simple";
      };
      components = {
        scalpel-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.fail
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.tagsoup
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        tests = {
          lib-tests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.regex-base
              hsPkgs.regex-tdfa
              hsPkgs.scalpel-core
              hsPkgs.tagsoup
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.scalpel-core
              hsPkgs.tagsoup
              hsPkgs.text
            ];
          };
        };
      };
    }