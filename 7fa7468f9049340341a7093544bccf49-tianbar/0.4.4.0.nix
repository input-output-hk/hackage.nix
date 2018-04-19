{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tianbar";
          version = "0.4.4.0";
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
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.dbus
              hsPkgs.gtk
              hsPkgs.gtk-traymanager
              hsPkgs.happstack-server
              hsPkgs.network
              hsPkgs.process
              hsPkgs.random
              hsPkgs.split
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.webkit
              hsPkgs.xdg-basedir
            ];
          };
        };
      };
    }