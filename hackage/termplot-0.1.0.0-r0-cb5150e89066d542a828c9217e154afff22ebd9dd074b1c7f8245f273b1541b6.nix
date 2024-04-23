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
      identifier = { name = "termplot"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Ricardo Catalinas Jiménez";
      maintainer = "Ricardo Catalinas Jiménez <r@untroubled.be>";
      author = "Ricardo Catalinas Jiménez <r@untroubled.be>";
      homepage = "https://github.com/jimenezrick/termplot";
      url = "";
      synopsis = "Plot time series in your terminal using commands stdout";
      description = "Use unicode characters to plot fancy time series in real-time in your terminal.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "termplot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = true;
        };
      };
    };
  }