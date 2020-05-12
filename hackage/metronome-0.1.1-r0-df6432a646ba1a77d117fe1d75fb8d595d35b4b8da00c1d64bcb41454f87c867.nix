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
      specVersion = "1.8";
      identifier = { name = "metronome"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Paolo Veonelli, 2012";
      maintainer = "paolo.veronelli@gmail.com";
      author = "Paolo Veronelli";
      homepage = "";
      url = "";
      synopsis = "Time Synchronized execution.";
      description = "Metronome and tracks, useful to execute IO actions at regular intervals. State exposed via STM.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
          ];
        buildable = true;
        };
      };
    }