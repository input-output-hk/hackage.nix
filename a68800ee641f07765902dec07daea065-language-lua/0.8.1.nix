{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-lua";
          version = "0.8.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>, Eric Mertens <emertens@gmail.com>";
        author = "Ömer Sinan Ağacan";
        homepage = "http://github.com/osa1/language-lua";
        url = "";
        synopsis = "Lua parser and pretty-printer";
        description = "Lua 5.3 lexer, parser and pretty-printer.";
        buildType = "Simple";
      };
      components = {
        language-lua = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.parsec
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
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
              hsPkgs.bytestring
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