{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bisc"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2018 Michele Guerini Rocco";
      maintainer = "rnhmjoj@inventati.org";
      author = "Michele Guerini Rocco";
      homepage = "";
      url = "";
      synopsis = "A small tool that clears qutebrowser cookies.";
      description = "Bisc clears qutebrowser cookies and javascript local storage\nby domains, stored in a whitelist.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bisc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."selda" or ((hsPkgs.pkgs-errors).buildDepError "selda"))
            (hsPkgs."selda-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "selda-sqlite"))
            (hsPkgs."xdg-basedir" or ((hsPkgs.pkgs-errors).buildDepError "xdg-basedir"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }