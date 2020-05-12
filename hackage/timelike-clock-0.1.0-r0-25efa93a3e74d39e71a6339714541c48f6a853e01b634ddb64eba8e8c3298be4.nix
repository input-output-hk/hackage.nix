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
      specVersion = "1.10";
      identifier = { name = "timelike-clock"; version = "0.1.0"; };
      license = "LicenseRef-Apache";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "http://hub.darcs.net/esz/timelike-clock";
      url = "";
      synopsis = "Timelike interface for the clock library";
      description = "This library provides a\n<http://hackage.haskell.org/package/timelike timelike> interface to\nthe <http://hackage.haskell.org/package/clock clock library>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."timelike" or (errorHandler.buildDepError "timelike"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }