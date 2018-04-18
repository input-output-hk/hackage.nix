{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "isiz";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hironao Komatsu <hirkmt@gmail.com>";
        author = "Hironao Komatsu";
        homepage = "";
        url = "";
        synopsis = "A program to show the size of image and whether suitable for wallpaper.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          isiz = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk3
            ];
          };
        };
      };
    }