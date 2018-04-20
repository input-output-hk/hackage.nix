{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-webkit = false;
      gtk3 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "ghcjs-dom-webkit";
          version = "0.3.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "DOM library that supports both GHCJS and WebKitGTK";
        description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and WebKitGTK.";
        buildType = "Simple";
      };
      components = {
        ghcjs-dom-webkit = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.glib
          ] ++ (if _flags.gtk3
            then [
              hsPkgs.gtk3
              hsPkgs.webkitgtk3
            ]
            else [
              hsPkgs.gtk
              hsPkgs.webkit
            ]);
        };
      };
    }