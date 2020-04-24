{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "antagonist"; version = "0.1.0.30"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "hackage@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "A web interface to Antisplice dungeons.";
      description = "A web interface to Antisplice dungeons, implemented as a yesod subsite.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          (hsPkgs."antisplice" or ((hsPkgs.pkgs-errors).buildDepError "antisplice"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."chatty" or ((hsPkgs.pkgs-errors).buildDepError "chatty"))
          (hsPkgs."chatty-utils" or ((hsPkgs.pkgs-errors).buildDepError "chatty-utils"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."time-locale-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-locale-compat"))
          ];
        buildable = true;
        };
      exes = {
        "ironforge-yesod" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."antisplice" or ((hsPkgs.pkgs-errors).buildDepError "antisplice"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."chatty" or ((hsPkgs.pkgs-errors).buildDepError "chatty"))
            (hsPkgs."chatty-utils" or ((hsPkgs.pkgs-errors).buildDepError "chatty-utils"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ironforge" or ((hsPkgs.pkgs-errors).buildDepError "ironforge"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
            (hsPkgs."time-locale-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-locale-compat"))
            ];
          buildable = true;
          };
        };
      };
    }