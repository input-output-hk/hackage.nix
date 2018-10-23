{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { gtk3 = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jsaddle";
        version = "0.3.0.1";
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
        depends  = [
          (hsPkgs.template-haskell)
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs.ghcjs-base)
            (hsPkgs.ghcjs-prim)
          ]
          else [
            (hsPkgs.glib)
          ] ++ (if flags.gtk3
            then [
              (hsPkgs.gtk3)
              (hsPkgs.webkitgtk3)
              (hsPkgs.webkitgtk3-javascriptcore)
            ]
            else [
              (hsPkgs.gtk)
              (hsPkgs.webkit)
              (hsPkgs.webkit-javascriptcore)
            ]));
      };
      tests = {
        "test-tool" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.jsaddle)
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) ([
            (hsPkgs.glib)
          ] ++ (if flags.gtk3
            then [
              (hsPkgs.gtk3)
              (hsPkgs.webkitgtk3)
              (hsPkgs.webkitgtk3-javascriptcore)
            ]
            else [
              (hsPkgs.gtk)
              (hsPkgs.webkit)
              (hsPkgs.webkit-javascriptcore)
            ]));
        };
      };
    };
  }