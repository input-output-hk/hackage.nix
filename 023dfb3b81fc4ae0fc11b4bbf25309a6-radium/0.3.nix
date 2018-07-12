{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "radium";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klangner@gmail.com";
        author = "Krzysztof Langner";
        homepage = "https://github.com/klangner/radium";
        url = "";
        synopsis = "Chemistry";
        description = "This library contains periodic table and basic information about elements";
        buildType = "Simple";
      };
      components = {
        "radium" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
          ];
        };
        tests = {
          "unit-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.parsec
            ];
          };
        };
      };
    }