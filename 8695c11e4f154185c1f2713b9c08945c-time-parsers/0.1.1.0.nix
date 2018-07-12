{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-parsers";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/time-parsers#readme";
        url = "";
        synopsis = "Parsers for types in `time`.";
        description = "Parsers for types in `time`.";
        buildType = "Simple";
      };
      components = {
        "time-parsers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsers
            hsPkgs.template-haskell
            hsPkgs.time
          ];
        };
        tests = {
          "date-parsers-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsers
              hsPkgs.template-haskell
              hsPkgs.time
              hsPkgs.time-parsers
              hsPkgs.attoparsec
              hsPkgs.bifunctors
              hsPkgs.parsec
              hsPkgs.parsers
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
            ];
          };
        };
      };
    }