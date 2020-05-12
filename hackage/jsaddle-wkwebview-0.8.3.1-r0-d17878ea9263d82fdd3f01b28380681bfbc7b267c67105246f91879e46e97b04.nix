{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jsaddle-wkwebview"; version = "0.8.3.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          ];
        frameworks = [
          (pkgs."Foundation" or (errorHandler.sysDepError "Foundation"))
          (pkgs."WebKit" or (errorHandler.sysDepError "WebKit"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) (if system.isIos
          then [ (pkgs."UIKit" or (errorHandler.sysDepError "UIKit")) ]
          else [ (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa")) ]);
        buildable = true;
        };
      };
    }