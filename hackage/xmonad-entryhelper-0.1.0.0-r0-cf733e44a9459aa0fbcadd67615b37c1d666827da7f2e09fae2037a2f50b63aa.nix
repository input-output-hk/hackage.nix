{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xmonad-entryhelper"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Javran Cheng";
      maintainer = "Javran.c@gmail.com";
      author = "Javran Cheng";
      homepage = "https://github.com/Javran/xmonad-entryhelper";
      url = "";
      synopsis = "XMonad config entry point wrapper";
      description = "xmonad-entryhelper makes your compiled XMonad config a standalone binary.\n\nIt simulates the XMonad's argument handling and supports customized compliation.\n\nPlease check\n<https://github.com/Javran/xmonad-entryhelper/blob/master/README.md README>\nfor details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-contrib"))
          ];
        buildable = true;
        };
      };
    }