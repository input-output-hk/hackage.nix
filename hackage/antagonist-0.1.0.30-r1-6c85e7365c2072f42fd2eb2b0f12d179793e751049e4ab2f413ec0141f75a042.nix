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
      identifier = { name = "antagonist"; version = "0.1.0.30"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "hackage@enumeration.eu";
      author = "Enum Cohrs";
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
          (hsPkgs."chatty-utils" or (errorHandler.buildDepError "chatty-utils"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
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
            (hsPkgs."chatty-utils" or (errorHandler.buildDepError "chatty-utils"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ironforge" or (errorHandler.buildDepError "ironforge"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
            (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          ];
          buildable = true;
        };
      };
    };
  }