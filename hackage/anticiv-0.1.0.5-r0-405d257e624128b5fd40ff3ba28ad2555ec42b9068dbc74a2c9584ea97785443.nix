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
      identifier = { name = "anticiv"; version = "0.1.0.5"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chatty" or (errorHandler.buildDepError "chatty"))
          (hsPkgs."chatty-utils" or (errorHandler.buildDepError "chatty-utils"))
          (hsPkgs."chatty-text" or (errorHandler.buildDepError "chatty-text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."antisplice" or (errorHandler.buildDepError "antisplice"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ironforge" or (errorHandler.buildDepError "ironforge"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
          (hsPkgs."ctpl" or (errorHandler.buildDepError "ctpl"))
        ];
        buildable = true;
      };
      exes = {
        "anticiv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chatty" or (errorHandler.buildDepError "chatty"))
            (hsPkgs."chatty-utils" or (errorHandler.buildDepError "chatty-utils"))
            (hsPkgs."chatty-text" or (errorHandler.buildDepError "chatty-text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."antisplice" or (errorHandler.buildDepError "antisplice"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ironforge" or (errorHandler.buildDepError "ironforge"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ctpl" or (errorHandler.buildDepError "ctpl"))
          ];
          buildable = true;
        };
      };
    };
  }