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
      identifier = { name = "antagonist"; version = "0.1.0.7"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "marvin.cohrs@gmx.net";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "A web interface to Antisplice dungeons.";
      description = "A web interface to Antisplice dungeons, implemented as a yesod subsite.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."antisplice" or (errorHandler.buildDepError "antisplice"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."chatty" or (errorHandler.buildDepError "chatty"))
          (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
          (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
        buildable = true;
        };
      exes = {
        "ironforge-yesod" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."antisplice" or (errorHandler.buildDepError "antisplice"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."chatty" or (errorHandler.buildDepError "chatty"))
            (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
            (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
            (hsPkgs."ironforge" or (errorHandler.buildDepError "ironforge"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ];
          buildable = true;
          };
        };
      };
    }