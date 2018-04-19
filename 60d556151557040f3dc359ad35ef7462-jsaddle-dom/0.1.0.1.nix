{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsaddle-dom";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "DOM library that uses jsaddle to support both GHCJS and WebKitGTK";
        description = "Documentent Object Model (DOM) functions implemented using jsaddle.\nIt works with both GHCJS and GHC.";
        buildType = "Simple";
      };
      components = {
        jsaddle-dom = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.jsaddle
            hsPkgs.lens
          ] ++ (if compiler.isGhcjs
            then [
              hsPkgs.ghcjs-base
              hsPkgs.ghcjs-prim
              hsPkgs.ghc-prim
            ]
            else [
              hsPkgs.haskell-gi-base
              hsPkgs.gi-glib
              hsPkgs.gi-gtk
              hsPkgs.gi-webkit
            ]);
        };
      };
    }