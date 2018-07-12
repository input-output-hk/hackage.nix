{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "rhine-gloss";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "programming@manuelbaerenz.de";
        author = "Manuel Bärenz";
        homepage = "";
        url = "";
        synopsis = "Wrapper to run reactive programs written in Rhine\nwith Gloss as backend";
        description = "This package provides a simple wrapper for the `gloss` library,\nor rather the function `Graphics.Gloss.play`,\nenabling you to write `gloss` applications as synchronous signal functions.";
        buildType = "Simple";
      };
      components = {
        "rhine-gloss" = {
          depends  = [
            hsPkgs.base
            hsPkgs.rhine
            hsPkgs.dunai
            hsPkgs.gloss
          ];
        };
        exes = {
          "rhine-gloss-gears" = {
            depends  = [
              hsPkgs.base
              hsPkgs.rhine-gloss
            ];
          };
        };
      };
    }