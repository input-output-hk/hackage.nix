{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsaddle-webkitgtk";
          version = "0.8.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "Interface for JavaScript that works with GHCJS and GHC";
        description = "This package provides an EDSL for calling JavaScript that\ncan be used both from GHCJS and GHC.  When using GHC\nthe application is run using Warp and WebSockets to\ndrive a small JavaScipt helper.";
        buildType = "Simple";
      };
      components = {
        "jsaddle-webkitgtk" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.gi-glib
            hsPkgs.gi-gtk
            hsPkgs.gi-webkit
            hsPkgs.gi-javascriptcore
            hsPkgs.haskell-gi-base
            hsPkgs.jsaddle
            hsPkgs.text
            hsPkgs.unix
            hsPkgs.webkitgtk3-javascriptcore
          ];
        };
      };
    }