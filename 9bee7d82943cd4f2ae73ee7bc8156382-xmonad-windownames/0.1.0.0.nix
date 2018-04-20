{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xmonad-windownames";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "plindbe2@gmail.com";
        author = "Phil Lindberg";
        homepage = "https://github.com/plindbe2/xmonad-windownames";
        url = "";
        synopsis = "A library to automatically put named windows into the DynamicLog.";
        description = "";
        buildType = "Simple";
      };
      components = {
        xmonad-windownames = {
          depends  = [
            hsPkgs.base
            hsPkgs.utf8-string
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
            hsPkgs.containers
          ];
        };
      };
    }