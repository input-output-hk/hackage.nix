{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scanner";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Yuras Shumovich 2016";
        maintainer = "shumovichy@gmail.com";
        author = "Yuras Shumovich";
        homepage = "https://github.com/Yuras/scanner";
        url = "";
        synopsis = "Fast non-backtracking incremental combinator parsing for bytestrings";
        description = "Parser combinator library designed to be fast. It doesn't\nsupport backtracking.";
        buildType = "Simple";
      };
      components = {
        scanner = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.scanner
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.criterion
              hsPkgs.scanner
            ];
          };
        };
      };
    }