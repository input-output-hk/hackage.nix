{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "language-lua";
          version = "0.6.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "omeragacan@gmail.com";
        author = "Ömer Sinan Ağacan";
        homepage = "http://github.com/osa1/language-lua";
        url = "";
        synopsis = "Lua parser and pretty-printer";
        description = "Lua 5.2 lexer, parser and pretty-printer.";
        buildType = "Simple";
      };
      components = {
        language-lua = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.safe
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.language-lua
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.language-lua
            ];
          };
        };
      };
    }