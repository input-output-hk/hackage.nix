{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "elo";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Mark Fine";
        maintainer = "mark.fine@gmail.com";
        author = "Mark Fine";
        homepage = "http://github.com/mfine/elo";
        url = "";
        synopsis = "Elo Rating Library";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        elo = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          elo-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.elo
              hsPkgs.tasty
            ];
          };
        };
      };
    }