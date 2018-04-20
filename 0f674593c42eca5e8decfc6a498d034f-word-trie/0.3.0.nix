{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "word-trie";
          version = "0.3.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "yi-devel@googlegroups.com";
        author = "Mateusz Kowalczyk";
        homepage = "https://github.com/yi-editor/word-trie";
        url = "";
        synopsis = "Implementation of a finite trie over words.";
        description = "Implementation of a finite trie over words.";
        buildType = "Simple";
      };
      components = {
        word-trie = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.containers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.word-trie
            ];
          };
        };
      };
    }