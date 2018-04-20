{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "open-browser";
          version = "0.1.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rightfold@gmail.com";
        author = "rightfold";
        homepage = "";
        url = "";
        synopsis = "Open a web browser from Haskell.";
        description = "Open a web browser from Haskell.\nCurrently BSD, Linux, OS X and Windows are supported.";
        buildType = "Simple";
      };
      components = {
        open-browser = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
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