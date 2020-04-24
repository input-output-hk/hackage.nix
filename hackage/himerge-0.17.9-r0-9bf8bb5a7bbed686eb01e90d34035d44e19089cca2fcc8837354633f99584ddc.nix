{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "himerge"; version = "0.17.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "araujo@gentoo.org";
      author = "Luis Francisco Araujo";
      homepage = "";
      url = "";
      synopsis = "Haskell Graphical User Interface for Emerge";
      description = "Himerge is a graphical user interface for emerge (Gentoo's Portage system)\nwritten in Haskell using gtk2hs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "himerge" = {
          depends = [
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."mozembed" or ((hsPkgs.pkgs-errors).buildDepError "mozembed"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            ];
          buildable = true;
          };
        };
      };
    }