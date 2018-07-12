{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-lua";
          version = "0.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eric Mertens <emertens@gmail.com>";
        author = "Ömer Sinan Ağacan, Eric Mertens";
        homepage = "http://github.com/glguy/language-lua";
        url = "";
        synopsis = "Lua parser and pretty-printer";
        description = "Lua 5.3 lexer, parser and pretty-printer.";
        buildType = "Simple";
      };
      components = {
        "language-lua" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.text
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.language-lua
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.language-lua
            ];
          };
        };
      };
    }