{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      include-app-delegate = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jsaddle-wkwebview";
        version = "0.9.0.0";
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
      "jsaddle-wkwebview" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.jsaddle)
          (hsPkgs.data-default)
          (hsPkgs.containers)
        ];
        frameworks = [
          (pkgs.Foundation)
          (pkgs.WebKit)
        ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) (if system.isIos
          then [
            (pkgs.UIKit)
            (pkgs.UserNotifications)
          ]
          else [ (pkgs.Cocoa) ]);
      };
    };
  }