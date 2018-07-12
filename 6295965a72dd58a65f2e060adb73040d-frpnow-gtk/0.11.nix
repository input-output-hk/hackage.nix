{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "frpnow-gtk";
          version = "0.11";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzeus@gmail.com";
        author = "Atze van der Ploeg";
        homepage = "https://github.com/atzeus/FRPNow";
        url = "";
        synopsis = "Program GUIs with GTK and frpnow!";
        description = "Program GUIs with GTK and frpnow!";
        buildType = "Simple";
      };
      components = {
        "frpnow-gtk" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.frpnow
            hsPkgs.glib
            hsPkgs.gtk
          ];
        };
      };
    }