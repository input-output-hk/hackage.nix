{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghcjs = true;
      gtk3 = true;
      jsffi = true;
      webkit = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsaddle";
          version = "0.2.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "High level interface for webkit-javascriptcore";
        description = "This package provides an EDSL for calling JavaScript code using\nthe JavaScriptCore engine and low level Haskell bindings\nin the webkit-javascriptcore library <https://github.com/ghcjs/webkit-javascriptcore>.";
        buildType = "Simple";
      };
      components = {
        "jsaddle" = {
          depends  = (([
            hsPkgs.template-haskell
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional _flags.ghcjs hsPkgs.ghcjs-base) ++ pkgs.lib.optional (_flags.ghcjs && _flags.jsffi) hsPkgs.ghcjs-base) ++ pkgs.lib.optionals (!_flags.ghcjs || _flags.webkit) (if _flags.gtk3
            then [
              hsPkgs.webkitgtk3
              hsPkgs.webkitgtk3-javascriptcore
            ]
            else [
              hsPkgs.webkit
              hsPkgs.webkit-javascriptcore
            ]);
        };
        tests = {
          "test-tool" = {
            depends  = ([
              hsPkgs.template-haskell
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.hslogger
              hsPkgs.jsaddle
            ] ++ pkgs.lib.optional (_flags.ghcjs && _flags.jsffi) hsPkgs.ghcjs-base) ++ pkgs.lib.optionals (!_flags.ghcjs || _flags.webkit) ([
              hsPkgs.glib
            ] ++ (if _flags.gtk3
              then [
                hsPkgs.gtk3
                hsPkgs.webkitgtk3
                hsPkgs.webkitgtk3-javascriptcore
              ]
              else [
                hsPkgs.gtk
                hsPkgs.webkit
                hsPkgs.webkit-javascriptcore
              ]));
          };
        };
      };
    }