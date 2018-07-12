{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Randometer";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nate@so8r.es";
        author = "So8res";
        homepage = "http://github.com/Soares/Randometer.hs";
        url = "";
        synopsis = "Randomness intuition trainer";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "randometer" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random-fu
            ];
          };
        };
      };
    }