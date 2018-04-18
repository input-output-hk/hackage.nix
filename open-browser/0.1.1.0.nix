{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "open-browser";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rightfold@gmail.com";
        author = "rightfold";
        homepage = "";
        url = "";
        synopsis = "Open a web browser from Haskell.";
        description = "Open a web browser from Haskell.\nCurrently only Linux and OS X are supported.";
        buildType = "Simple";
      };
      components = {
        open-browser = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.open-browser
            ];
          };
        };
      };
    }