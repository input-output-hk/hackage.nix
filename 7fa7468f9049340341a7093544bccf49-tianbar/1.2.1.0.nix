{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tianbar";
          version = "1.2.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "a@koterpillar.com";
        author = "Alexey Kotlyarov";
        homepage = "https://github.com/koterpillar/tianbar";
        url = "";
        synopsis = "A desktop bar based on WebKit";
        description = "A desktop bar using WebKit for rendering as much as possible.\nBased on Taffybar.";
        buildType = "Simple";
      };
      components = {
        tianbar = {
          depends  = [
            hsPkgs.base
            hsPkgs.dbus
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
            hsPkgs.utf8-string
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
          ];
        };
        exes = {
          tianbar = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.dbus
              hsPkgs.filepath
              hsPkgs.haskell-gi-base
              hsPkgs.http-types
              hsPkgs.gi-gdk
              hsPkgs.gi-gio
              hsPkgs.gi-glib
              hsPkgs.gi-gtk
              hsPkgs.gi-webkit2
              hsPkgs.lens
              hsPkgs.mime-types
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.process
              hsPkgs.random
              hsPkgs.scientific
              hsPkgs.split
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
              hsPkgs.xdg-basedir
            ];
            pkgconfig = [
              pkgconfPkgs."gtk+-3.0"
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.dbus
              hsPkgs.filepath
              hsPkgs.haskell-gi-base
              hsPkgs.http-types
              hsPkgs.gi-gdk
              hsPkgs.gi-gio
              hsPkgs.gi-glib
              hsPkgs.gi-gtk
              hsPkgs.gi-webkit2
              hsPkgs.lens
              hsPkgs.mime-types
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.process
              hsPkgs.random
              hsPkgs.scientific
              hsPkgs.split
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
              hsPkgs.xdg-basedir
            ];
          };
        };
      };
    }