{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bluetile"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "";
      url = "";
      synopsis = "A modern tiling window manager with a gentle learning curve";
      description = "Bluetile is a tiling window manager for X based on xmonad. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. Bluetile's focus lies on making the tiling paradigm easily\naccessible to users coming from traditional window managers by drawing\non known conventions and providing both mouse and keyboard access for all features.\nIt also tries to be usable 'out of the box', requiring minimal to\nno configuration in most cases.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bluetile" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."xmonad-bluetilebranch" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-bluetilebranch"))
            (hsPkgs."xmonad-contrib-bluetilebranch" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-contrib-bluetilebranch"))
            ];
          buildable = true;
          };
        "bluetiledock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            ];
          buildable = true;
          };
        "bluetilemockwin" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            ];
          buildable = true;
          };
        "bluetilegreet" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            ];
          buildable = true;
          };
        };
      };
    }