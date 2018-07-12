{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      jsffi = true;
      webkit = false;
      old-webkit = false;
      gtk3 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-dom";
          version = "0.3.0.1";
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
        "ghcjs-dom" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
          ] ++ (if compiler.isGhcjs && true && _flags.jsffi
            then [
              hsPkgs.ghcjs-base
              hsPkgs.ghcjs-prim
              hsPkgs.ghc-prim
            ]
            else if !_flags.webkit
              then [ hsPkgs.jsaddle-dom ]
              else [
                hsPkgs.glib
                hsPkgs.transformers
              ] ++ (if _flags.gtk3
                then [
                  hsPkgs.gtk3
                  hsPkgs.webkitgtk3
                ]
                else [
                  hsPkgs.gtk
                  hsPkgs.webkit
                ]));
        };
      };
    }