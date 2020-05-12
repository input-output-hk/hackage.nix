{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "fixed-timestep"; version = "0.2.0.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }