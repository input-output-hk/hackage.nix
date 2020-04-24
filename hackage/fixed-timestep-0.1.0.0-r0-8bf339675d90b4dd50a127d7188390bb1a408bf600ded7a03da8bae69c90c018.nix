{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "fixed-timestep"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Nicolas Stamm (Solonarv)";
      maintainer = "Nicolas Stamm <nstamm@gmx.de>";
      author = "Solonarv";
      homepage = "https://github.com/Solonarv/fixed-timestep#README";
      url = "";
      synopsis = "Pure Haskell library to repeat an action at a specific frequency.";
      description = "Repeat IO actions at a specific frequency, using\nflicks (1/705600000 of a second) for timekeeping.\nAlso contains a simple implementation of flicks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }