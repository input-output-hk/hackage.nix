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
    flags = { test = false; coverage = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "libmpd"; version = "0.6.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Ben Sinclair 2005-2009, Joachim Fasting 2010, 2011";
      maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
      author = "Ben Sinclair";
      homepage = "http://github.com/joachifm/libmpd-haskell";
      url = "";
      synopsis = "An MPD client library.";
      description = "A client library for MPD, the Music Player Daemon\n(<http://www.musicpd.org/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = if flags.test then false else true;
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optionals (flags.test) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }