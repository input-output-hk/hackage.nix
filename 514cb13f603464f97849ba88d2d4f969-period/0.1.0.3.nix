{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "period";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ankarakulov@gmail.com";
        author = "Alexey Karakulov";
        homepage = "https://github.com/w3rs/period";
        url = "";
        synopsis = "Parse and format date periods, collapse and expand their text representations.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "period" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.parsec
          ];
        };
        exes = {
          "period" = {
            depends  = [
              hsPkgs.period
              hsPkgs.base
              hsPkgs.text
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.period
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.time
            ];
          };
        };
      };
    }