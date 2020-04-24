{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "anticiv"; version = "0.1.0.4"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "This is an IRC bot for Mafia and Resistance.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."chatty" or ((hsPkgs.pkgs-errors).buildDepError "chatty"))
          (hsPkgs."chatty-utils" or ((hsPkgs.pkgs-errors).buildDepError "chatty-utils"))
          (hsPkgs."chatty-text" or ((hsPkgs.pkgs-errors).buildDepError "chatty-text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."antisplice" or ((hsPkgs.pkgs-errors).buildDepError "antisplice"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."ironforge" or ((hsPkgs.pkgs-errors).buildDepError "ironforge"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
          (hsPkgs."ctpl" or ((hsPkgs.pkgs-errors).buildDepError "ctpl"))
          ];
        buildable = true;
        };
      exes = {
        "anticiv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chatty" or ((hsPkgs.pkgs-errors).buildDepError "chatty"))
            (hsPkgs."chatty-utils" or ((hsPkgs.pkgs-errors).buildDepError "chatty-utils"))
            (hsPkgs."chatty-text" or ((hsPkgs.pkgs-errors).buildDepError "chatty-text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."antisplice" or ((hsPkgs.pkgs-errors).buildDepError "antisplice"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ironforge" or ((hsPkgs.pkgs-errors).buildDepError "ironforge"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ctpl" or ((hsPkgs.pkgs-errors).buildDepError "ctpl"))
            ];
          buildable = true;
          };
        };
      };
    }