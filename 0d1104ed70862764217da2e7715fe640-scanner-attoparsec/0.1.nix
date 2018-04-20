{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scanner-attoparsec";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Yuras Shumovich 2016";
        maintainer = "shumovichy@gmail.com";
        author = "Yuras Shumovich";
        homepage = "https://github.com/Yuras/scanner-attoparsec";
        url = "";
        synopsis = "Inject attoparsec parser with backtracking into non-backtracking scanner";
        description = "Backtracking kills performance, so scanner package doesn't support it.\nBut sometimes you just need it. E.g. you have a mostly non-backtracking\nparser, but a small bit of its grammar is too complex to transform it\nto non-backtracking form. In that case you can inject a backtracking\nattoparsec parser into otherwise non-backtracking scanner.\n\nSee also http://hackage.haskell.org/scanner";
        buildType = "Simple";
      };
      components = {
        scanner-attoparsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.scanner
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.scanner
              hsPkgs.attoparsec
              hsPkgs.hspec
              hsPkgs.scanner-attoparsec
            ];
          };
        };
      };
    }