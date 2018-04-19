{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "dhall-lex";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "Lexer for the Dhall language";
        description = "Lexer for Dhall written with [Alex](https://www.haskell.org/alex/doc/html/index.html). This package has few dependencies and is fast.";
        buildType = "Simple";
      };
      components = {
        dhall-lex = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.scientific
          ];
        };
        tests = {
          dhall-lex-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.dhall-lex
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.hspec-dirstream
            ];
          };
        };
        benchmarks = {
          dhall-lex-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.dhall-lex
              hsPkgs.criterion
              hsPkgs.bytestring
            ];
          };
        };
      };
    }