{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "TimePiece"; version = "0.0.5"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "A simple tile-based digital clock screen saver";
      description = "A simple tile-based digital clock screen saver";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
          (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
          (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
          (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          ];
        buildable = true;
        };
      exes = {
        "TimePiece" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        };
      };
    }