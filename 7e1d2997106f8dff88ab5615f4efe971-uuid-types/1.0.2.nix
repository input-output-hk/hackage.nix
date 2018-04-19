{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "uuid-types";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2014 Antoine Latter";
        maintainer = "aslatter@gmail.com";
        author = "Antoine Latter";
        homepage = "https://github.com/aslatter/uuid";
        url = "";
        synopsis = "Type definitions for Universally Unique Identifiers";
        description = "This library contains type definitions for Universally Unique Identifiers\nand basic conversion functions.\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
        buildType = "Simple";
      };
      components = {
        uuid-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.random
            hsPkgs.text
          ];
        };
        tests = {
          testuuid = {
            depends  = [
              hsPkgs.base
              hsPkgs.uuid-types
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.uuid-types
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.random
            ];
          };
        };
      };
    }