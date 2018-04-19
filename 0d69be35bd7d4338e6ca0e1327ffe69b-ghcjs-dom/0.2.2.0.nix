{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      jsffi = true;
      webkit = false;
      old-webkit = false;
      jsc = false;
      gtk3 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-dom";
          version = "0.2.2.0";
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
        ghcjs-dom = {
          depends  = ([
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
          ] ++ pkgs.lib.optionals (compiler.isGhcjs && _flags.jsffi) [
            hsPkgs.ghcjs-base
            hsPkgs.ghcjs-prim
            hsPkgs.ghc-prim
          ]) ++ pkgs.lib.optionals (!compiler.isGhcjs || _flags.webkit) ([
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