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
      specVersion = "1.6";
      identifier = { name = "conductive-base"; version = "0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "renick@gmail.com";
      author = "Renick Bell";
      homepage = "http://www.renickbell.net/doku.php?id=conductive-base";
      url = "";
      synopsis = "a library for live coding and real-time musical applications";
      description = "Conductive is a set of Haskell packages for live coding and real-time music applications. One of its central purposes is controlling the timing of events. Conductive-base is the core library for the Conductive set of libraries. This library includes the play, pause, stop, and reset functions, as well as corresponding data types, MusicalEnvironment, Player, and TempoClock.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }