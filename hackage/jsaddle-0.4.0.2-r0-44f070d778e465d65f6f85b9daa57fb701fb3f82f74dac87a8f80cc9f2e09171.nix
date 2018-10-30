{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jsaddle";
        version = "0.4.0.2";
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
      "library" = {
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
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-glib)
            (hsPkgs.gi-gtk)
            (hsPkgs.gi-webkit)
            (hsPkgs.gi-javascriptcore)
            (hsPkgs.webkitgtk3-javascriptcore)
          ]);
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
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-glib)
            (hsPkgs.gi-gtk)
            (hsPkgs.gi-webkit)
            (hsPkgs.gi-javascriptcore)
            (hsPkgs.webkitgtk3-javascriptcore)
          ];
        };
      };
    };
  }