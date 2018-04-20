{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsaddle-wkwebview";
          version = "0.8.3.2";
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
        jsaddle-wkwebview = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.jsaddle
          ];
          frameworks = [
            pkgs.Foundation
            pkgs.WebKit
          ] ++ (if !compiler.isGhcjs && system.isIos
            then [ pkgs.UIKit ]
            else [ pkgs.Cocoa ]);
        };
      };
    }