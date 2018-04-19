{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-series-lib";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klangner@gmail.com";
        author = "Krzysztof Langner";
        homepage = "https://github.com/klangner/time-series-lib";
        url = "";
        synopsis = "Library for Time Series processing";
        description = "This library contains:\n\n* Nothing yet";
        buildType = "Simple";
      };
      components = {
        time-series-lib = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.Cabal
            ];
          };
        };
      };
    }