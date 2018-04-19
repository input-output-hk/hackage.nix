{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "spike";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gtener@gmail.com";
        author = "Krzysztof Skrzętnicki";
        homepage = "http://github.com/Tener/spike";
        url = "";
        synopsis = "Experimental web browser";
        description = "Experimental web browser based on WebKit-Gtk+";
        buildType = "Simple";
      };
      components = {
        exes = {
          spike = {
            depends  = [
              hsPkgs.webkit
              hsPkgs.containers
              hsPkgs.gtk
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.mtl
              hsPkgs.rosezipper
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.glib
              hsPkgs.random
              hsPkgs.global-variables
            ];
          };
        };
      };
    }