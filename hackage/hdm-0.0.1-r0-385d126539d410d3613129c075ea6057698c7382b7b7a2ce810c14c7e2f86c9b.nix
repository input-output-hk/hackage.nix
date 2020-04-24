{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "hdm"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs & Cheater__";
      homepage = "";
      url = "";
      synopsis = "a small display manager.";
      description = "A small display manager which loads from shell and just provides a text based menu for selecting the xinitrc file of your choice.  I created it for use with xmonad, where I often wish to start up gnome or xfce4 as well.  Since this uses startx, it handles multiple xsessions seamlessly.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hdm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }