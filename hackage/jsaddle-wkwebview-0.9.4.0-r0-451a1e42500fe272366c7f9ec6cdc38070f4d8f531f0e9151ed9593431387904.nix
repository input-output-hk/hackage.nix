{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { include-app-delegate = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "jsaddle-wkwebview"; version = "0.9.4.0"; };
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        frameworks = [
          (pkgs."Foundation" or ((hsPkgs.pkgs-errors).sysDepError "Foundation"))
          (pkgs."WebKit" or ((hsPkgs.pkgs-errors).sysDepError "WebKit"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) (if system.isIos
          then [
            (pkgs."UIKit" or ((hsPkgs.pkgs-errors).sysDepError "UIKit"))
            (pkgs."UserNotifications" or ((hsPkgs.pkgs-errors).sysDepError "UserNotifications"))
            ]
          else [
            (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"))
            ]);
        buildable = true;
        };
      };
    }