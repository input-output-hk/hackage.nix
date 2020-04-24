{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jsaddle-webkit2gtk"; version = "0.8.3.1"; };
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
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."gi-glib" or ((hsPkgs.pkgs-errors).buildDepError "gi-glib"))
          (hsPkgs."gi-gio" or ((hsPkgs.pkgs-errors).buildDepError "gi-gio"))
          (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
          (hsPkgs."gi-webkit2" or ((hsPkgs.pkgs-errors).buildDepError "gi-webkit2"))
          (hsPkgs."gi-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "gi-javascriptcore"))
          (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
          (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."webkit2gtk3-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkit2gtk3-javascriptcore"))
          ]) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        buildable = true;
        };
      };
    }