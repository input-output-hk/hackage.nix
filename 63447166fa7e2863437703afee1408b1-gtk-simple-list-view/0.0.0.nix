{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gtk-simple-list-view";
          version = "0.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
        author = "Timothy Hobbs";
        homepage = "http://github.com/timthelion/gtk-simple-list-view";
        url = "";
        synopsis = "A simple custom form widget for gtk which allows single LOC creation/updating of list views.";
        description = "A simple custom form widget for gtk which allows single LOC creation/updating of list views.";
        buildType = "Simple";
      };
      components = {
        gtk-simple-list-view = {
          depends  = [
            hsPkgs.gtk
            hsPkgs.base
          ];
        };
      };
    }