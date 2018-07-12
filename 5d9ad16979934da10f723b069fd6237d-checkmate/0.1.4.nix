{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      static = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "checkmate";
          version = "0.1.4";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2017 Hong Minhee";
        maintainer = "hong.minhee@gmail.com";
        author = "Hong Minhee";
        homepage = "https://github.com/spoqa/checkmate#readme";
        url = "";
        synopsis = "Generate checklists relevant to a given patch";
        description = "";
        buildType = "Simple";
      };
      components = {
        "checkmate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.diff-parse
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.megaparsec
            hsPkgs.range
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.monad-parallel
          ];
        };
        exes = {
          "checkmate" = {
            depends  = [
              hsPkgs.base
              hsPkgs.diff-parse
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.megaparsec
              hsPkgs.range
              hsPkgs.text
              hsPkgs.checkmate
              hsPkgs.github
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          "hlint" = {
            depends  = [
              hsPkgs.base
              hsPkgs.diff-parse
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.megaparsec
              hsPkgs.range
              hsPkgs.text
              hsPkgs.hlint
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.diff-parse
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.megaparsec
              hsPkgs.range
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.checkmate
              hsPkgs.file-embed
              hsPkgs.hspec
              hsPkgs.hspec-megaparsec
              hsPkgs.interpolatedstring-perl6
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-text
              hsPkgs.temporary
            ];
          };
        };
      };
    }