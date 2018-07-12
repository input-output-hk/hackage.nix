{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/hoodle";
        url = "";
        synopsis = "Executable for hoodle";
        description = "Hoodle is a pen notetaking program written in haskell.";
        buildType = "Custom";
      };
      components = {
        "hoodle" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.cmdargs
            hsPkgs.configurator
            hsPkgs.dyre
            hsPkgs.hoodle-core
          ];
        };
        exes = {
          "hoodle" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.hoodle-core
              hsPkgs.hoodle
            ];
          };
        };
      };
    }